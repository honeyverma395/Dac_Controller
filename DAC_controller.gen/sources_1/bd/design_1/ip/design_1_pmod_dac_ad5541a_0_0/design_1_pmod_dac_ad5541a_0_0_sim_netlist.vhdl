-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Dec  4 18:49:26 2025
-- Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/hverma/Projects/DAC_controller/DAC_controller.gen/sources_1/bd/design_1/ip/design_1_pmod_dac_ad5541a_0_0/design_1_pmod_dac_ad5541a_0_0_sim_netlist.vhdl
-- Design      : design_1_pmod_dac_ad5541a_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmod_dac_ad5541a_0_0_spi_master is
  port (
    ss_n : out STD_LOGIC;
    spi_busy : out STD_LOGIC;
    sclk : out STD_LOGIC;
    busy_reg_0 : out STD_LOGIC;
    state_reg_0 : out STD_LOGIC;
    spi_busy_prev_reg : out STD_LOGIC;
    mosi : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \clk_ratio_reg[31]_0\ : in STD_LOGIC;
    spi_busy_prev : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 0 to 0 );
    count : in STD_LOGIC;
    mosi_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_sequential_state_reg[1]_inv\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pmod_dac_ad5541a_0_0_spi_master : entity is "spi_master";
end design_1_pmod_dac_ad5541a_0_0_spi_master;

architecture STRUCTURE of design_1_pmod_dac_ad5541a_0_0_spi_master is
  signal assert_data : STD_LOGIC;
  signal assert_data_i_1_n_0 : STD_LOGIC;
  signal busy1 : STD_LOGIC;
  signal busy115_out : STD_LOGIC;
  signal \busy1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_n_0\ : STD_LOGIC;
  signal \busy1_carry__0_n_1\ : STD_LOGIC;
  signal \busy1_carry__0_n_2\ : STD_LOGIC;
  signal \busy1_carry__0_n_3\ : STD_LOGIC;
  signal \busy1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \busy1_carry__1_n_2\ : STD_LOGIC;
  signal \busy1_carry__1_n_3\ : STD_LOGIC;
  signal busy1_carry_i_1_n_0 : STD_LOGIC;
  signal busy1_carry_i_2_n_0 : STD_LOGIC;
  signal busy1_carry_i_3_n_0 : STD_LOGIC;
  signal busy1_carry_i_4_n_0 : STD_LOGIC;
  signal busy1_carry_n_0 : STD_LOGIC;
  signal busy1_carry_n_1 : STD_LOGIC;
  signal busy1_carry_n_2 : STD_LOGIC;
  signal busy1_carry_n_3 : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal clk_ratio : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clk_ratio[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_ratio[31]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[5]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[5]_i_2_n_0\ : STD_LOGIC;
  signal \clk_toggles[5]_i_3_n_0\ : STD_LOGIC;
  signal \clk_toggles[5]_i_4_n_0\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_toggles_reg_n_0_[5]\ : STD_LOGIC;
  signal count0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal last_bit_rx : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \last_bit_rx[4]_i_1_n_0\ : STD_LOGIC;
  signal \mosi0__0\ : STD_LOGIC;
  signal mosi_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal mosi_tristate_oe_reg_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sclk\ : STD_LOGIC;
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal sclk_i_2_n_0 : STD_LOGIC;
  signal \^spi_busy\ : STD_LOGIC;
  signal ss_n_i_1_n_0 : STD_LOGIC;
  signal state_0 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal \tx_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[15]_i_2_n_0\ : STD_LOGIC;
  signal \tx_buffer[15]_i_4_n_0\ : STD_LOGIC;
  signal \tx_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_busy1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_busy1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_busy1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_busy1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of assert_data_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_ratio[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_ratio[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_toggles[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_toggles[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_toggles[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_toggles[5]_i_2\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[23]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[25]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[29]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[30]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of mosi_INST_0_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ss_n_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_buffer[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_buffer[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tx_buffer[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tx_buffer[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tx_buffer[13]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tx_buffer[14]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tx_buffer[15]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tx_buffer[15]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_buffer[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tx_buffer[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_buffer[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tx_buffer[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_buffer[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_buffer[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tx_buffer[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tx_buffer[9]_i_1\ : label is "soft_lutpair25";
begin
  sclk <= \^sclk\;
  spi_busy <= \^spi_busy\;
\FSM_sequential_state[1]_inv_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200F20"
    )
        port map (
      I0 => spi_busy_prev,
      I1 => \^spi_busy\,
      I2 => state(0),
      I3 => count,
      I4 => \FSM_sequential_state_reg[1]_inv\,
      O => spi_busy_prev_reg
    );
assert_data_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state_0,
      I1 => assert_data,
      O => assert_data_i_1_n_0
    );
assert_data_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \clk_toggles[5]_i_1_n_0\,
      CLR => reset,
      D => assert_data_i_1_n_0,
      Q => assert_data
    );
busy1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => busy1_carry_n_0,
      CO(2) => busy1_carry_n_1,
      CO(1) => busy1_carry_n_2,
      CO(0) => busy1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_busy1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => busy1_carry_i_1_n_0,
      S(2) => busy1_carry_i_2_n_0,
      S(1) => busy1_carry_i_3_n_0,
      S(0) => busy1_carry_i_4_n_0
    );
\busy1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => busy1_carry_n_0,
      CO(3) => \busy1_carry__0_n_0\,
      CO(2) => \busy1_carry__0_n_1\,
      CO(1) => \busy1_carry__0_n_2\,
      CO(0) => \busy1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_busy1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \busy1_carry__0_i_1_n_0\,
      S(2) => \busy1_carry__0_i_2_n_0\,
      S(1) => \busy1_carry__0_i_3_n_0\,
      S(0) => \busy1_carry__0_i_4_n_0\
    );
\busy1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[23]\,
      I1 => \count_reg_n_0_[22]\,
      I2 => \count_reg_n_0_[21]\,
      O => \busy1_carry__0_i_1_n_0\
    );
\busy1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[20]\,
      I1 => \count_reg_n_0_[19]\,
      I2 => \count_reg_n_0_[18]\,
      O => \busy1_carry__0_i_2_n_0\
    );
\busy1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[16]\,
      I2 => \count_reg_n_0_[15]\,
      O => \busy1_carry__0_i_3_n_0\
    );
\busy1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[13]\,
      I2 => \count_reg_n_0_[12]\,
      O => \busy1_carry__0_i_4_n_0\
    );
\busy1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \busy1_carry__0_n_0\,
      CO(3) => \NLW_busy1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => busy1,
      CO(1) => \busy1_carry__1_n_2\,
      CO(0) => \busy1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_busy1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \busy1_carry__1_i_1_n_0\,
      S(1) => \busy1_carry__1_i_2_n_0\,
      S(0) => \busy1_carry__1_i_3_n_0\
    );
\busy1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \count_reg_n_0_[31]\,
      I1 => clk_ratio(31),
      I2 => \count_reg_n_0_[30]\,
      O => \busy1_carry__1_i_1_n_0\
    );
\busy1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[29]\,
      I1 => \count_reg_n_0_[28]\,
      I2 => \count_reg_n_0_[27]\,
      O => \busy1_carry__1_i_2_n_0\
    );
\busy1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[26]\,
      I1 => \count_reg_n_0_[25]\,
      I2 => \count_reg_n_0_[24]\,
      O => \busy1_carry__1_i_3_n_0\
    );
busy1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      I2 => \count_reg_n_0_[9]\,
      O => busy1_carry_i_1_n_0
    );
busy1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[6]\,
      O => busy1_carry_i_2_n_0
    );
busy1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      O => busy1_carry_i_3_n_0
    );
busy1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => clk_ratio(0),
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      O => busy1_carry_i_4_n_0
    );
busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => busy115_out,
      I1 => busy1,
      I2 => state_0,
      I3 => \clk_ratio_reg[31]_0\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      PRE => reset,
      Q => \^spi_busy\
    );
\clk_ratio[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => state_0,
      I1 => \clk_ratio_reg[31]_0\,
      I2 => clk_ratio(0),
      O => \clk_ratio[0]_i_1_n_0\
    );
\clk_ratio[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \clk_ratio_reg[31]_0\,
      I1 => state_0,
      I2 => clk_ratio(31),
      O => \clk_ratio[31]_i_1_n_0\
    );
\clk_ratio_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_ratio[0]_i_1_n_0\,
      PRE => reset,
      Q => clk_ratio(0)
    );
\clk_ratio_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \clk_ratio[31]_i_1_n_0\,
      Q => clk_ratio(31)
    );
\clk_toggles[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => \clk_toggles_reg_n_0_[0]\,
      I2 => \clk_toggles[5]_i_3_n_0\,
      O => \clk_toggles[0]_i_1_n_0\
    );
\clk_toggles[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => state_0,
      I1 => \clk_toggles[5]_i_3_n_0\,
      I2 => \clk_toggles_reg_n_0_[0]\,
      I3 => \clk_toggles_reg_n_0_[1]\,
      O => \clk_toggles[1]_i_1_n_0\
    );
\clk_toggles[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => state_0,
      I1 => \clk_toggles[5]_i_3_n_0\,
      I2 => \clk_toggles_reg_n_0_[0]\,
      I3 => \clk_toggles_reg_n_0_[1]\,
      I4 => \clk_toggles_reg_n_0_[2]\,
      O => \clk_toggles[2]_i_1_n_0\
    );
\clk_toggles[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888880000000"
    )
        port map (
      I0 => state_0,
      I1 => \clk_toggles[5]_i_3_n_0\,
      I2 => \clk_toggles_reg_n_0_[1]\,
      I3 => \clk_toggles_reg_n_0_[0]\,
      I4 => \clk_toggles_reg_n_0_[2]\,
      I5 => \clk_toggles_reg_n_0_[3]\,
      O => \clk_toggles[3]_i_1_n_0\
    );
\clk_toggles[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => state_0,
      I1 => \clk_toggles[5]_i_3_n_0\,
      I2 => \clk_toggles[5]_i_4_n_0\,
      I3 => \clk_toggles_reg_n_0_[4]\,
      O => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => busy1,
      I1 => state_0,
      I2 => \clk_ratio_reg[31]_0\,
      O => \clk_toggles[5]_i_1_n_0\
    );
\clk_toggles[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => state_0,
      I1 => \clk_toggles[5]_i_3_n_0\,
      I2 => \clk_toggles[5]_i_4_n_0\,
      I3 => \clk_toggles_reg_n_0_[4]\,
      I4 => \clk_toggles_reg_n_0_[5]\,
      O => \clk_toggles[5]_i_2_n_0\
    );
\clk_toggles[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[5]\,
      I1 => \clk_toggles_reg_n_0_[0]\,
      I2 => \clk_toggles_reg_n_0_[1]\,
      I3 => \clk_toggles_reg_n_0_[3]\,
      I4 => \clk_toggles_reg_n_0_[4]\,
      I5 => \clk_toggles_reg_n_0_[2]\,
      O => \clk_toggles[5]_i_3_n_0\
    );
\clk_toggles[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[3]\,
      I1 => \clk_toggles_reg_n_0_[1]\,
      I2 => \clk_toggles_reg_n_0_[0]\,
      I3 => \clk_toggles_reg_n_0_[2]\,
      O => \clk_toggles[5]_i_4_n_0\
    );
\clk_toggles_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_toggles[5]_i_1_n_0\,
      CLR => reset,
      D => \clk_toggles[0]_i_1_n_0\,
      Q => \clk_toggles_reg_n_0_[0]\
    );
\clk_toggles_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_toggles[5]_i_1_n_0\,
      CLR => reset,
      D => \clk_toggles[1]_i_1_n_0\,
      Q => \clk_toggles_reg_n_0_[1]\
    );
\clk_toggles_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_toggles[5]_i_1_n_0\,
      CLR => reset,
      D => \clk_toggles[2]_i_1_n_0\,
      Q => \clk_toggles_reg_n_0_[2]\
    );
\clk_toggles_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_toggles[5]_i_1_n_0\,
      CLR => reset,
      D => \clk_toggles[3]_i_1_n_0\,
      Q => \clk_toggles_reg_n_0_[3]\
    );
\clk_toggles_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_toggles[5]_i_1_n_0\,
      CLR => reset,
      D => \clk_toggles[4]_i_1_n_0\,
      Q => \clk_toggles_reg_n_0_[4]\
    );
\clk_toggles_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_toggles[5]_i_1_n_0\,
      CLR => reset,
      D => \clk_toggles[5]_i_2_n_0\,
      Q => \clk_toggles_reg_n_0_[5]\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(12 downto 9),
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(16 downto 13),
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(20 downto 17),
      S(3) => \count_reg_n_0_[20]\,
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(24 downto 21),
      S(3) => \count_reg_n_0_[24]\,
      S(2) => \count_reg_n_0_[23]\,
      S(1) => \count_reg_n_0_[22]\,
      S(0) => \count_reg_n_0_[21]\
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(28 downto 25),
      S(3) => \count_reg_n_0_[28]\,
      S(2) => \count_reg_n_0_[27]\,
      S(1) => \count_reg_n_0_[26]\,
      S(0) => \count_reg_n_0_[25]\
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => count0(31 downto 29),
      S(3) => '0',
      S(2) => \count_reg_n_0_[31]\,
      S(1) => \count_reg_n_0_[30]\,
      S(0) => \count_reg_n_0_[29]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => busy1,
      I2 => state_0,
      O => p_1_in(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(10),
      O => p_1_in(10)
    );
\count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(11),
      O => p_1_in(11)
    );
\count[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(12),
      O => p_1_in(12)
    );
\count[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(13),
      O => p_1_in(13)
    );
\count[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(14),
      O => p_1_in(14)
    );
\count[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(15),
      O => p_1_in(15)
    );
\count[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(16),
      O => p_1_in(16)
    );
\count[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(17),
      O => p_1_in(17)
    );
\count[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(18),
      O => p_1_in(18)
    );
\count[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(19),
      O => p_1_in(19)
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(1),
      O => p_1_in(1)
    );
\count[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(20),
      O => p_1_in(20)
    );
\count[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(21),
      O => p_1_in(21)
    );
\count[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(22),
      O => p_1_in(22)
    );
\count[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(23),
      O => p_1_in(23)
    );
\count[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(24),
      O => p_1_in(24)
    );
\count[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(25),
      O => p_1_in(25)
    );
\count[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(26),
      O => p_1_in(26)
    );
\count[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(27),
      O => p_1_in(27)
    );
\count[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(28),
      O => p_1_in(28)
    );
\count[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(29),
      O => p_1_in(29)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(2),
      O => p_1_in(2)
    );
\count[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(30),
      O => p_1_in(30)
    );
\count[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_0,
      I1 => \clk_ratio_reg[31]_0\,
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(31),
      O => p_1_in(31)
    );
\count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(3),
      O => p_1_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(4),
      O => p_1_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(5),
      O => p_1_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(6),
      O => p_1_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(7),
      O => p_1_in(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(8),
      O => p_1_in(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => state_0,
      I1 => busy1,
      I2 => count0(9),
      O => p_1_in(9)
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      D => p_1_in(0),
      PRE => reset,
      Q => \count_reg_n_0_[0]\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(10),
      Q => \count_reg_n_0_[10]\
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(11),
      Q => \count_reg_n_0_[11]\
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(12),
      Q => \count_reg_n_0_[12]\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(13),
      Q => \count_reg_n_0_[13]\
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(14),
      Q => \count_reg_n_0_[14]\
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(15),
      Q => \count_reg_n_0_[15]\
    );
\count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(16),
      Q => \count_reg_n_0_[16]\
    );
\count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(17),
      Q => \count_reg_n_0_[17]\
    );
\count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(18),
      Q => \count_reg_n_0_[18]\
    );
\count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(19),
      Q => \count_reg_n_0_[19]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(1),
      Q => \count_reg_n_0_[1]\
    );
\count_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(20),
      Q => \count_reg_n_0_[20]\
    );
\count_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(21),
      Q => \count_reg_n_0_[21]\
    );
\count_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(22),
      Q => \count_reg_n_0_[22]\
    );
\count_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(23),
      Q => \count_reg_n_0_[23]\
    );
\count_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(24),
      Q => \count_reg_n_0_[24]\
    );
\count_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(25),
      Q => \count_reg_n_0_[25]\
    );
\count_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(26),
      Q => \count_reg_n_0_[26]\
    );
\count_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(27),
      Q => \count_reg_n_0_[27]\
    );
\count_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(28),
      Q => \count_reg_n_0_[28]\
    );
\count_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(29),
      Q => \count_reg_n_0_[29]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(2),
      Q => \count_reg_n_0_[2]\
    );
\count_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(30),
      Q => \count_reg_n_0_[30]\
    );
\count_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(31),
      Q => \count_reg_n_0_[31]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(3),
      Q => \count_reg_n_0_[3]\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(4),
      Q => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(5),
      Q => \count_reg_n_0_[5]\
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(6),
      Q => \count_reg_n_0_[6]\
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(7),
      Q => \count_reg_n_0_[7]\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(8),
      Q => \count_reg_n_0_[8]\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[31]_i_1_n_0\,
      CLR => reset,
      D => p_1_in(9),
      Q => \count_reg_n_0_[9]\
    );
\last_bit_rx[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => last_bit_rx(4),
      I1 => reset,
      I2 => \clk_ratio_reg[31]_0\,
      I3 => state_0,
      O => \last_bit_rx[4]_i_1_n_0\
    );
\last_bit_rx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \last_bit_rx[4]_i_1_n_0\,
      Q => last_bit_rx(4),
      R => '0'
    );
mosi_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mosi_tristate_oe_reg_n_0,
      I1 => mosi_0,
      O => mosi
    );
mosi_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5F004000"
    )
        port map (
      I0 => busy115_out,
      I1 => \mosi0__0\,
      I2 => busy1,
      I3 => state_0,
      I4 => mosi_0,
      O => state_reg_0
    );
mosi_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFAAAAA800AAAA"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[15]\,
      I1 => busy115_out,
      I2 => \mosi0__0\,
      I3 => busy1,
      I4 => state_0,
      I5 => mosi_tristate_oe_reg_n_0,
      O => mosi_tristate_oe_i_1_n_0
    );
mosi_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mosi_tristate_oe_i_1_n_0,
      Q => mosi_tristate_oe_reg_n_0,
      R => '0'
    );
sclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"707F8080"
    )
        port map (
      I0 => busy1,
      I1 => sclk_i_2_n_0,
      I2 => state_0,
      I3 => \clk_ratio_reg[31]_0\,
      I4 => \^sclk\,
      O => sclk_i_1_n_0
    );
sclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[0]\,
      I1 => \clk_toggles_reg_n_0_[2]\,
      I2 => \clk_toggles_reg_n_0_[1]\,
      I3 => \clk_toggles_reg_n_0_[4]\,
      I4 => \clk_toggles_reg_n_0_[3]\,
      I5 => \clk_toggles_reg_n_0_[5]\,
      O => sclk_i_2_n_0
    );
sclk_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sclk_i_1_n_0,
      Q => \^sclk\
    );
spi_ena_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F0010"
    )
        port map (
      I0 => \^spi_busy\,
      I1 => spi_busy_prev,
      I2 => state(0),
      I3 => count,
      I4 => \clk_ratio_reg[31]_0\,
      O => busy_reg_0
    );
ss_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => busy115_out,
      I1 => busy1,
      I2 => state_0,
      O => ss_n_i_1_n_0
    );
ss_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[1]\,
      I1 => \clk_toggles_reg_n_0_[4]\,
      I2 => \clk_toggles_reg_n_0_[5]\,
      I3 => \clk_toggles_reg_n_0_[0]\,
      I4 => \clk_toggles_reg_n_0_[3]\,
      I5 => \clk_toggles_reg_n_0_[2]\,
      O => busy115_out
    );
ss_n_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ss_n_i_1_n_0,
      PRE => reset,
      Q => ss_n
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => busy1,
      I1 => busy115_out,
      I2 => state_0,
      I3 => \clk_ratio_reg[31]_0\,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => state_i_1_n_0,
      Q => state_0
    );
\tx_buffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => state_0,
      O => \tx_buffer[0]_i_1_n_0\
    );
\tx_buffer[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[9]\,
      I1 => state_0,
      I2 => Q(10),
      O => \tx_buffer[10]_i_1_n_0\
    );
\tx_buffer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[10]\,
      I1 => state_0,
      I2 => Q(11),
      O => \tx_buffer[11]_i_1_n_0\
    );
\tx_buffer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[11]\,
      I1 => state_0,
      I2 => Q(12),
      O => \tx_buffer[12]_i_1_n_0\
    );
\tx_buffer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[12]\,
      I1 => state_0,
      I2 => Q(13),
      O => \tx_buffer[13]_i_1_n_0\
    );
\tx_buffer[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[13]\,
      I1 => state_0,
      I2 => Q(14),
      O => \tx_buffer[14]_i_1_n_0\
    );
\tx_buffer[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => busy1,
      I1 => \mosi0__0\,
      I2 => state_0,
      I3 => \clk_ratio_reg[31]_0\,
      O => \tx_buffer[15]_i_1_n_0\
    );
\tx_buffer[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[14]\,
      I1 => state_0,
      I2 => Q(15),
      O => \tx_buffer[15]_i_2_n_0\
    );
\tx_buffer[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => assert_data,
      I1 => \clk_toggles_reg_n_0_[5]\,
      I2 => \tx_buffer[15]_i_4_n_0\,
      O => \mosi0__0\
    );
\tx_buffer[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
        port map (
      I0 => \clk_toggles_reg_n_0_[0]\,
      I1 => \clk_toggles_reg_n_0_[1]\,
      I2 => \clk_toggles_reg_n_0_[2]\,
      I3 => \clk_toggles_reg_n_0_[3]\,
      I4 => \clk_toggles_reg_n_0_[4]\,
      I5 => last_bit_rx(4),
      O => \tx_buffer[15]_i_4_n_0\
    );
\tx_buffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[0]\,
      I1 => state_0,
      I2 => Q(1),
      O => \tx_buffer[1]_i_1_n_0\
    );
\tx_buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[1]\,
      I1 => state_0,
      I2 => Q(2),
      O => \tx_buffer[2]_i_1_n_0\
    );
\tx_buffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[2]\,
      I1 => state_0,
      I2 => Q(3),
      O => \tx_buffer[3]_i_1_n_0\
    );
\tx_buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[3]\,
      I1 => state_0,
      I2 => Q(4),
      O => \tx_buffer[4]_i_1_n_0\
    );
\tx_buffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[4]\,
      I1 => state_0,
      I2 => Q(5),
      O => \tx_buffer[5]_i_1_n_0\
    );
\tx_buffer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[5]\,
      I1 => state_0,
      I2 => Q(6),
      O => \tx_buffer[6]_i_1_n_0\
    );
\tx_buffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[6]\,
      I1 => state_0,
      I2 => Q(7),
      O => \tx_buffer[7]_i_1_n_0\
    );
\tx_buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[7]\,
      I1 => state_0,
      I2 => Q(8),
      O => \tx_buffer[8]_i_1_n_0\
    );
\tx_buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[8]\,
      I1 => state_0,
      I2 => Q(9),
      O => \tx_buffer[9]_i_1_n_0\
    );
\tx_buffer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[0]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[0]\
    );
\tx_buffer_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[10]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[10]\
    );
\tx_buffer_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[11]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[11]\
    );
\tx_buffer_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[12]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[12]\
    );
\tx_buffer_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[13]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[13]\
    );
\tx_buffer_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[14]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[14]\
    );
\tx_buffer_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[15]_i_2_n_0\,
      Q => \tx_buffer_reg_n_0_[15]\
    );
\tx_buffer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[1]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[1]\
    );
\tx_buffer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[2]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[2]\
    );
\tx_buffer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[3]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[3]\
    );
\tx_buffer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[4]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[4]\
    );
\tx_buffer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[5]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[5]\
    );
\tx_buffer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[6]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[6]\
    );
\tx_buffer_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[7]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[7]\
    );
\tx_buffer_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[8]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[8]\
    );
\tx_buffer_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tx_buffer[15]_i_1_n_0\,
      CLR => reset,
      D => \tx_buffer[9]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmod_dac_ad5541a_0_0_pmod_dac_ad5541a is
  port (
    ss_n : out STD_LOGIC;
    busy : out STD_LOGIC;
    sclk : out STD_LOGIC;
    state_reg : out STD_LOGIC;
    mosi : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    dac_tx_ena : in STD_LOGIC;
    mosi_0 : in STD_LOGIC;
    dac_data : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pmod_dac_ad5541a_0_0_pmod_dac_ad5541a : entity is "pmod_dac_ad5541a";
end design_1_pmod_dac_ad5541a_0_0_pmod_dac_ad5541a;

architecture STRUCTURE of design_1_pmod_dac_ad5541a_0_0_pmod_dac_ad5541a is
  component design_1_pmod_dac_ad5541a_0_0_button_debounce is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    button_in : in STD_LOGIC;
    button_out : out STD_LOGIC
  );
  end component design_1_pmod_dac_ad5541a_0_0_button_debounce;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \^busy\ : STD_LOGIC;
  signal \busy_i_1__0_n_0\ : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_i_3_n_0 : STD_LOGIC;
  signal busy_i_4_n_0 : STD_LOGIC;
  signal button_pressed : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__0_n_4\ : STD_LOGIC;
  signal \count0_carry__0_n_5\ : STD_LOGIC;
  signal \count0_carry__0_n_6\ : STD_LOGIC;
  signal \count0_carry__0_n_7\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_4\ : STD_LOGIC;
  signal \count0_carry__1_n_5\ : STD_LOGIC;
  signal \count0_carry__1_n_6\ : STD_LOGIC;
  signal \count0_carry__1_n_7\ : STD_LOGIC;
  signal \count0_carry__2_n_7\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count0_carry_n_4 : STD_LOGIC;
  signal count0_carry_n_5 : STD_LOGIC;
  signal count0_carry_n_6 : STD_LOGIC;
  signal count0_carry_n_7 : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal spi_busy : STD_LOGIC;
  signal spi_busy_prev : STD_LOGIC;
  signal spi_ena_reg_n_0 : STD_LOGIC;
  signal spi_master_0_n_3 : STD_LOGIC;
  signal spi_master_0_n_5 : STD_LOGIC;
  signal spi_tx_data : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tx_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "pause:01,ready:10,start:00,send_data:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]_inv\ : label is "pause:01,ready:10,start:00,send_data:11";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_state_reg[1]_inv\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count[10]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[11]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[12]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count[13]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[4]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[5]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[6]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count[7]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count[8]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count[9]_i_1__0\ : label is "soft_lutpair33";
  attribute COUNTER_SIZE : integer;
  attribute COUNTER_SIZE of tx_button_controller : label is 10000;
begin
  busy <= \^busy\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECE3E0E"
    )
        port map (
      I0 => button_pressed,
      I1 => state(0),
      I2 => count,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => busy_i_2_n_0,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888888888888"
    )
        port map (
      I0 => \count_reg_n_0_[13]\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \count_reg_n_0_[9]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[10]\,
      I5 => busy_i_3_n_0,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \count_reg_n_0_[12]\,
      I1 => \count_reg_n_0_[11]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]_inv\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => spi_master_0_n_5,
      PRE => reset,
      Q => count
    );
\busy_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5FF5544"
    )
        port map (
      I0 => state(0),
      I1 => button_pressed,
      I2 => busy_i_2_n_0,
      I3 => count,
      I4 => \^busy\,
      O => \busy_i_1__0_n_0\
    );
busy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \count_reg_n_0_[10]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => busy_i_3_n_0,
      I4 => busy_i_4_n_0,
      O => busy_i_2_n_0
    );
busy_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[5]\,
      I3 => \count_reg_n_0_[6]\,
      O => busy_i_3_n_0
    );
busy_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[12]\,
      I2 => \count_reg_n_0_[8]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[13]\,
      I5 => \count_reg_n_0_[9]\,
      O => busy_i_4_n_0
    );
busy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \busy_i_1__0_n_0\,
      PRE => reset,
      Q => \^busy\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => count0_carry_n_4,
      O(2) => count0_carry_n_5,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__0_n_4\,
      O(2) => \count0_carry__0_n_5\,
      O(1) => \count0_carry__0_n_6\,
      O(0) => \count0_carry__0_n_7\,
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__1_n_4\,
      O(2) => \count0_carry__1_n_5\,
      O(1) => \count0_carry__1_n_6\,
      O(0) => \count0_carry__1_n_7\,
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_count0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => \count0_carry__2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \count_reg_n_0_[13]\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4051"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[0]_i_1__0_n_0\
    );
\count[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__1_n_6\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[10]_i_1__0_n_0\
    );
\count[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__1_n_5\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[11]_i_1__0_n_0\
    );
\count[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__1_n_4\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[12]_i_1__0_n_0\
    );
\count[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__2_n_7\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[13]_i_1__0_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => count0_carry_n_7,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[1]_i_1__0_n_0\
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => count0_carry_n_6,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[2]_i_1__0_n_0\
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => count0_carry_n_5,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[3]_i_1__0_n_0\
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => count0_carry_n_4,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[4]_i_1__0_n_0\
    );
\count[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__0_n_7\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[5]_i_1__0_n_0\
    );
\count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__0_n_6\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[6]_i_1__0_n_0\
    );
\count[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__0_n_5\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[7]_i_1__0_n_0\
    );
\count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__0_n_4\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[8]_i_1__0_n_0\
    );
\count[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A2"
    )
        port map (
      I0 => \count0_carry__1_n_7\,
      I1 => state(0),
      I2 => busy_i_2_n_0,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \count[9]_i_1__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[0]_i_1__0_n_0\,
      Q => \count_reg_n_0_[0]\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[10]_i_1__0_n_0\,
      Q => \count_reg_n_0_[10]\
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[11]_i_1__0_n_0\,
      Q => \count_reg_n_0_[11]\
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[12]_i_1__0_n_0\,
      Q => \count_reg_n_0_[12]\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[13]_i_1__0_n_0\,
      Q => \count_reg_n_0_[13]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[1]_i_1__0_n_0\,
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[2]_i_1__0_n_0\,
      Q => \count_reg_n_0_[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[3]_i_1__0_n_0\,
      Q => \count_reg_n_0_[3]\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[4]_i_1__0_n_0\,
      Q => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[5]_i_1__0_n_0\,
      Q => \count_reg_n_0_[5]\
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[6]_i_1__0_n_0\,
      Q => \count_reg_n_0_[6]\
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[7]_i_1__0_n_0\,
      Q => \count_reg_n_0_[7]\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[8]_i_1__0_n_0\,
      Q => \count_reg_n_0_[8]\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => \count[9]_i_1__0_n_0\,
      Q => \count_reg_n_0_[9]\
    );
spi_busy_prev_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => spi_busy,
      Q => spi_busy_prev
    );
spi_ena_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => spi_master_0_n_3,
      Q => spi_ena_reg_n_0
    );
spi_master_0: entity work.design_1_pmod_dac_ad5541a_0_0_spi_master
     port map (
      \FSM_sequential_state_reg[1]_inv\ => busy_i_2_n_0,
      Q(15 downto 0) => tx_data(15 downto 0),
      busy_reg_0 => spi_master_0_n_3,
      clk => clk,
      \clk_ratio_reg[31]_0\ => spi_ena_reg_n_0,
      count => count,
      mosi => mosi,
      mosi_0 => mosi_0,
      reset => reset,
      sclk => sclk,
      spi_busy => spi_busy,
      spi_busy_prev => spi_busy_prev,
      spi_busy_prev_reg => spi_master_0_n_5,
      ss_n => ss_n,
      state(0) => state(0),
      state_reg_0 => state_reg
    );
\spi_tx_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => count,
      I1 => button_pressed,
      I2 => state(0),
      O => spi_tx_data
    );
\spi_tx_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(0),
      Q => tx_data(0)
    );
\spi_tx_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(10),
      Q => tx_data(10)
    );
\spi_tx_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(11),
      Q => tx_data(11)
    );
\spi_tx_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(12),
      Q => tx_data(12)
    );
\spi_tx_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(13),
      Q => tx_data(13)
    );
\spi_tx_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(14),
      Q => tx_data(14)
    );
\spi_tx_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(15),
      Q => tx_data(15)
    );
\spi_tx_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(1),
      Q => tx_data(1)
    );
\spi_tx_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(2),
      Q => tx_data(2)
    );
\spi_tx_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(3),
      Q => tx_data(3)
    );
\spi_tx_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(4),
      Q => tx_data(4)
    );
\spi_tx_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(5),
      Q => tx_data(5)
    );
\spi_tx_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(6),
      Q => tx_data(6)
    );
\spi_tx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(7),
      Q => tx_data(7)
    );
\spi_tx_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(8),
      Q => tx_data(8)
    );
\spi_tx_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => spi_tx_data,
      CLR => reset,
      D => dac_data(9),
      Q => tx_data(9)
    );
tx_button_controller: component design_1_pmod_dac_ad5541a_0_0_button_debounce
     port map (
      button_in => dac_tx_ena,
      button_out => button_pressed,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pmod_dac_ad5541a_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    dac_tx_ena : in STD_LOGIC;
    dac_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    update_output_n : in STD_LOGIC;
    busy : out STD_LOGIC;
    ldac_n : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    ss_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pmod_dac_ad5541a_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pmod_dac_ad5541a_0_0 : entity is "design_1_pmod_dac_ad5541a_0_0,pmod_dac_ad5541a,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pmod_dac_ad5541a_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pmod_dac_ad5541a_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pmod_dac_ad5541a_0_0 : entity is "pmod_dac_ad5541a,Vivado 2024.1";
end design_1_pmod_dac_ad5541a_0_0;

architecture STRUCTURE of design_1_pmod_dac_ad5541a_0_0 is
  signal U0_n_3 : STD_LOGIC;
  signal mosi_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^update_output_n\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  \^update_output_n\ <= update_output_n;
  ldac_n <= \^update_output_n\;
U0: entity work.design_1_pmod_dac_ad5541a_0_0_pmod_dac_ad5541a
     port map (
      busy => busy,
      clk => clk,
      dac_data(15 downto 0) => dac_data(15 downto 0),
      dac_tx_ena => dac_tx_ena,
      mosi => mosi,
      mosi_0 => mosi_INST_0_i_1_n_0,
      reset => reset,
      sclk => sclk,
      ss_n => ss_n,
      state_reg => U0_n_3
    );
mosi_INST_0_i_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => U0_n_3,
      Q => mosi_INST_0_i_1_n_0
    );
end STRUCTURE;
