library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Name Vivado is complaining about in the DRC
entity design_1_pmod_dac_ad5541a_0_0_button_debounce is
  generic (
    COUNTER_SIZE : integer := 10_000
  );
  port (
    clk        : in  std_logic;
    reset      : in  std_logic;
    button_in  : in  std_logic;
    button_out : out std_logic
  );
end entity design_1_pmod_dac_ad5541a_0_0_button_debounce;

architecture rtl of design_1_pmod_dac_ad5541a_0_0_button_debounce is
begin
  u_core : entity work.button_debounce
    generic map (
      COUNTER_SIZE => COUNTER_SIZE
    )
    port map (
      clk        => clk,
      reset      => reset,
      button_in  => button_in,
      button_out => button_out
    );
end architecture rtl;
