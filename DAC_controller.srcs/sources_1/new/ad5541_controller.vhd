LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY pmod_dac_ad5541a IS
  GENERIC(
    clk_freq    : INTEGER := 100; --freqüència del rellotge del sistema en MHz
    spi_clk_div : INTEGER := 1;
    slaves      : INTEGER := 1);  --divisor per generar el rellotge SPI (clk_freq/100, arrodonit)
  PORT(
    clk             : IN      STD_LOGIC;                      --rellotge del sistema
    reset           : IN      STD_LOGIC;                      --reset 
    dac_tx_ena      : IN      STD_LOGIC;                      --petició d'enviament de dades al DAC
    dac_data        : IN      STD_LOGIC_VECTOR(15 DOWNTO 0);  --valor a enviar al DAC
    update_output_n : IN      STD_LOGIC;                      --controla quan el DAC actualitza la sortida
    busy            : OUT     STD_LOGIC;                      --indica si es pot iniciar una nova transacció
    ldac_n          : OUT     STD_LOGIC;                      --actualització de sortida cap al DAC
    mosi            : OUT     STD_LOGIC;                      --bus SPI: Master Out Slave In
    sclk            : BUFFER  STD_LOGIC;                      --bus SPI: rellotge (SCLK)
    ss_n            : BUFFER  STD_LOGIC_VECTOR(slaves-1 DOWNTO 0));                      --bus SPI: selecció d'esclau (en el nostre cas nomes 1)
END pmod_dac_ad5541a;

ARCHITECTURE behavior OF pmod_dac_ad5541a IS
  TYPE machine IS(start, pause, ready, send_data);            --estats necessaris
  SIGNAL state         : machine := start;                    --estat actual
  SIGNAL spi_busy_prev : STD_LOGIC;                           --valor anterior del senyal busy del SPI
  SIGNAL spi_busy      : STD_LOGIC;                           --senyal busy del SPI
  SIGNAL spi_ena       : STD_LOGIC;                           --enable per activar el mòdul SPI
  SIGNAL spi_tx_data   : STD_LOGIC_VECTOR(15 DOWNTO 0);       --dades a enviar pel SPI
  SIGNAL button_pressed: std_logic;
----------------------------------------------------------------
  -- Component SPI Master
  COMPONENT spi_master IS
    GENERIC(
      slaves  : INTEGER := 1;   --nombre d'esclaus SPI
      d_width : INTEGER := 16); --amplada de la paraula a transmetre
    PORT(
      clock   : IN     STD_LOGIC;                             --rellotge del sistema
      reset   : IN     STD_LOGIC;                             --reset asíncron
      enable  : IN     STD_LOGIC;                             --inicia la transacció SPI
      cpol    : IN     STD_LOGIC;                             --polaritat del rellotge SPI
      cpha    : IN     STD_LOGIC;                             --fase del rellotge SPI
      cont    : IN     STD_LOGIC;                             --mode continu (no usat)
      clk_div : IN     INTEGER;                               --divisor per generar SCLK
      addr    : IN     INTEGER;                               --adreça dels slaves SPI
      tx_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --dades a transmetre
      miso    : IN     STD_LOGIC;                             --Master In Slave Out (no utilitzat)
      sclk    : BUFFER STD_LOGIC;                             --rellotge SPI
      ss_n    : BUFFER STD_LOGIC_VECTOR(slaves-1 downto 0);                             --selecció dels slaves
      mosi    : OUT    STD_LOGIC;                             --sortida SPI cap a l'esclau
      busy    : OUT    STD_LOGIC;                             --indica ocupació / dada llesta
      rx_data : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0)); --dada rebuda (no usada)
  END COMPONENT spi_master;

----FlipsFlops del button
  COMPONENT button_debounce IS
   GENERIC(
          COUNTER_SIZE : integer := 10_000);
   PORT(  clk        : in  std_logic;
          reset      : in  std_logic;
          button_in  : in  std_logic;
          button_out : out std_logic);  
  END COMPONENT button_debounce;
------------------------------------------------------------------

BEGIN

  -- SPI Master
  spi_master_0: spi_master
    GENERIC MAP(slaves => 1, d_width => 16)
    PORT MAP(clock      => clk, 
             reset      => reset, 
             enable     => spi_ena, 
             cpol       => '0', 
             cpha       => '0',
             cont       => '0', 
             clk_div    => spi_clk_div, 
             addr       => 0, 
             tx_data    => spi_tx_data, 
             miso       => '0',
             sclk       => sclk, 
             ss_n       => ss_n, 
             mosi       => mosi, 
             busy       => spi_busy, 
             rx_data    => open);
             
  tx_button_controller: button_debounce
    PORT MAP(clk           => clk, 
             reset         => reset, 
             button_in     => dac_tx_ena, 
             button_out    => button_pressed);

  ldac_n <= update_output_n;  --'0' fa que el DAC actualitzi la sortida amb el valor recent enviat (Active low)
--  busy <= spi_busy;
  
  -- FSM del controlador del DAC
  PROCESS(clk, reset)
    VARIABLE count : INTEGER RANGE 0 TO clk_freq*100 := 0; --comptador
  BEGIN
  
    IF(reset = '1') THEN                     --reset actiu
      spi_ena <= '0';                        --desactiva el SPI
      spi_tx_data <= (OTHERS => '0');        --neteja dades
      busy <= '1';                           --mòdul no disponible
      state <= start;                        --retorna a l'estat inicial
      spi_busy_prev <= '0';                  --inicialitza l'estat previ del busy del SPI
      count:= 0;                             --reinicia el comptador

    ELSIF rising_edge(clk) THEN 
    
      spi_busy_prev <= spi_busy;             --emmagatzema l'estat anterior de busy
   
      CASE state IS
        -- Estat inicial: esperem 100 µs perquè el DAC s'inicialitzi
        WHEN start =>
          busy <= '1';                       --encara no disponible
          IF(count < clk_freq*100) THEN      --encara no hem arribat als 100 µs
            count := count + 1;
          ELSE                               --temps completat
            count := 0;
            state <= pause;                  --passem a la configuració inicial
          END IF;

        -- Pausa de 20 ns (t_12 del datasheet), el minim és 15 ns
        WHEN pause =>
          IF(count < clk_freq/50) THEN       
            count := count + 1;
          ELSE                               --pausa completada
            count := 0;
            busy <= '0';                     --mòdul llest per operar
            state <= ready;
          END IF;
        
        -- Estat d'espera: si rebem dac_tx_ena, preparem una transacció
        WHEN ready =>
          IF(button_pressed  = '1') THEN
            spi_tx_data <= dac_data;         --captura les dades del DAC
            busy <= '1';                     --ara està ocupat
            state <= send_data;              --passem a enviar
          END IF;

        -- S'executa la transacció SPI
        WHEN send_data =>
          --si el SPI no està ocupat i no ha començat encara:
          IF(spi_busy = '0' AND spi_busy_prev = '0') THEN
            spi_ena <= '1';                  --inicia la transacció SPI
          --si el SPI està ocupat:
          ELSIF(spi_busy = '1') THEN
            spi_ena <= '0';                  --treiem enable per no reiniciar-la
            
          --si busy torna a 0, transacció finalitzada
          ELSE
            state <= pause;                  --retorna al temps de pausa
          END IF;

        WHEN OTHERS =>
          state <= start;

      END CASE;      
    END IF;
  END PROCESS;
END behavior;
