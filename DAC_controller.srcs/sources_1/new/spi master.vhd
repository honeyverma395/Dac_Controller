LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY spi_master IS
  GENERIC(
    slaves  : INTEGER := 1;   --nombre de slaves disponibles
    d_width : INTEGER := 16   --ample de paraula a transmetre (bits)
  );
  PORT(
    clock   : IN     STD_LOGIC;
    reset_n : IN     STD_LOGIC;

    enable  : IN     STD_LOGIC;                             --iniciar transmissió
    cpol    : IN     STD_LOGIC;                             --polaritat del SCLK
    cpha    : IN     STD_LOGIC;                             --fase del SCLK
    cont    : IN     STD_LOGIC;                             --transmissió contínua
    clk_div : IN     INTEGER;                               --divisor de freqüència per SCLK (quantes oscil·lacions tenim del clk per 1/2 periode de sclk)
    addr    : IN     INTEGER;                               --adreça del slave actiu

    tx_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --paraula a transmetre
    miso    : IN     STD_LOGIC;                             --dada rebuda del slave

    sclk    : BUFFER STD_LOGIC;                             --sortida del clock SPI
    ss_n    : BUFFER STD_LOGIC_VECTOR(slaves-1 DOWNTO 0);   --selecció dels slaves
    mosi    : OUT    STD_LOGIC;                             --sortida MOSI

    busy    : OUT    STD_LOGIC;                             --1: ocupat, 0: lliure
    rx_data : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0)   --dada rebuda final
  );
END spi_master;

ARCHITECTURE logic OF spi_master IS

  TYPE machine IS (ready, execute);                         --FSM amb 2 estats

  SIGNAL state       : machine;
  SIGNAL slave_sel   : INTEGER;
  SIGNAL clk_ratio   : INTEGER;                             --valor efectiu del divisor
  SIGNAL count       : INTEGER;                             --comptador per generar SCLK
  SIGNAL clk_toggles : INTEGER RANGE 0 TO d_width*2 + 1;    --canvis totals de SCLK
  SIGNAL assert_data : STD_LOGIC;                           --1: transmetre, 0: rebre
  SIGNAL continue_f  : STD_LOGIC;                           --flag de transmissió contínua

  SIGNAL rx_buffer   : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);
  SIGNAL tx_buffer   : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);

  SIGNAL last_bit_rx : INTEGER RANGE 0 TO d_width*2;

BEGIN

  PROCESS(clock, reset_n)
  BEGIN
    -- RESET 
    IF reset_n = '0' THEN
      busy      <= '1';
      ss_n      <= (OTHERS => '1');
      mosi      <= 'Z';
      rx_data   <= (OTHERS => '0');
      state     <= ready;

    -- FUNCIONAMENT NORMAL
    ELSIF rising_edge(clock) THEN
      CASE state IS
        -- ESTAT READY: esperem a ENABLE
        WHEN ready =>
          busy       <= '0';                --master disponible
          ss_n       <= (OTHERS => '1');    --cap slave seleccionat
          mosi       <= 'Z';                --MOSI en alta impedància
          continue_f <= '0';

          IF enable = '1' THEN

            busy <= '1';                    --ara estem ocupats

            --selecció segura del slave
            IF addr < slaves THEN
              slave_sel <= addr;
            ELSE
              slave_sel <= 0;
            END IF;

            --divisor del clock SPI (si 0 → màxima velocitat)
            IF clk_div = 0 THEN
              clk_ratio <= 1;
              count     <= 1;
            ELSE
              clk_ratio <= clk_div;
              count     <= clk_div;
            END IF;

            --configuració del clock SPI
            sclk        <= cpol;
            assert_data <= NOT cpha;

            --carregar dades a transmetre
            tx_buffer   <= tx_data;

            clk_toggles <= 0;
            last_bit_rx <= d_width*2 + conv_integer(cpha) - 1;

            state <= execute;
          END IF;

        -- ESTAT EXECUTE: transmissió SPI completa
        WHEN execute =>

          busy <= '1';
          ss_n(slave_sel) <= '0';           --activar slave

          -- GENERACIÓ DEL CLOCK SPI (divisor)
          IF count = clk_ratio THEN
            count       <= 1;
            assert_data <= NOT assert_data; --canvi de fase (TX/RX)

            --actualitzar comptador de toggles
            IF clk_toggles = d_width*2 + 1 THEN
              clk_toggles <= 0;
            ELSE
              clk_toggles <= clk_toggles + 1;
            END IF;

            --toggle del SCLK
            IF clk_toggles <= d_width*2 THEN
              sclk <= NOT sclk;
            END IF;

            -- RECEPCIÓ (quan assert_data = 0)
            IF assert_data = '0' AND clk_toggles < last_bit_rx + 1 THEN
              rx_buffer <= rx_buffer(d_width-2 DOWNTO 0) & miso;
            END IF;

            -- TRANSMISSIÓ (quan assert_data = 1)
            IF assert_data = '1' AND clk_toggles < last_bit_rx THEN
              mosi      <= tx_buffer(d_width-1);
              tx_buffer <= tx_buffer(d_width-2 DOWNTO 0) & '0';
            END IF;

            -- TRANSMISSIÓ CONTÍNUA (enviar bytes seguidament)
            IF clk_toggles = last_bit_rx AND cont = '1' THEN
              tx_buffer   <= tx_data;
              clk_toggles <= last_bit_rx - d_width*2 + 1;
              continue_f  <= '1';
            END IF;

            IF continue_f = '1' THEN
              continue_f <= '0';
              busy       <= '0';
              rx_data    <= rx_buffer;
            END IF;

            -- FINAL NORMAL DE LA TRANSMISSIÓ
            IF clk_toggles = d_width*2 + 1 AND cont = '0' THEN
              busy    <= '0';
              ss_n    <= (OTHERS => '1');
              mosi    <= 'Z';
              rx_data <= rx_buffer;
              state   <= ready;
            END IF;

          ELSE
            --encara no hem arribat al divisor, seguim comptant
            count <= count + 1;
          END IF;

      END CASE;
    END IF;
  END PROCESS;

END logic;
