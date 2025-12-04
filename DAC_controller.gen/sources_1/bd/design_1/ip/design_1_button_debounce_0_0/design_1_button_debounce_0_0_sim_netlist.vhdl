-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Dec  4 18:51:56 2025
-- Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/hverma/Projects/DAC_controller/DAC_controller.gen/sources_1/bd/design_1/ip/design_1_button_debounce_0_0/design_1_button_debounce_0_0_sim_netlist.vhdl
-- Design      : design_1_button_debounce_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_button_debounce_0_0_button_debounce is
  port (
    button_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    button_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_button_debounce_0_0_button_debounce : entity is "button_debounce";
end design_1_button_debounce_0_0_button_debounce;

architecture STRUCTURE of design_1_button_debounce_0_0_button_debounce is
  signal \count0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal count0_carry_i_1_n_0 : STD_LOGIC;
  signal count0_carry_i_2_n_0 : STD_LOGIC;
  signal count0_carry_i_3_n_0 : STD_LOGIC;
  signal count0_carry_i_4_n_0 : STD_LOGIC;
  signal count0_carry_i_5_n_0 : STD_LOGIC;
  signal count0_carry_i_6_n_0 : STD_LOGIC;
  signal count0_carry_i_7_n_0 : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal flipflop_1 : STD_LOGIC;
  signal flipflop_2 : STD_LOGIC;
  signal flipflop_3 : STD_LOGIC;
  signal flipflop_3_i_1_n_0 : STD_LOGIC;
  signal flipflop_4 : STD_LOGIC;
  signal \pause_counter.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \pause_counter.count[0]_i_3_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg\ : STD_LOGIC_VECTOR ( 13 downto 4 );
  signal \pause_counter.count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[2]\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[3]\ : STD_LOGIC;
  signal NLW_count0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of button_out_INST_0 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of count0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of flipflop_3_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[8]_i_1\ : label is 11;
begin
button_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => flipflop_3,
      I1 => flipflop_4,
      O => button_out
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => '0',
      DI(3) => count0_carry_i_1_n_0,
      DI(2) => count0_carry_i_2_n_0,
      DI(1) => '0',
      DI(0) => count0_carry_i_3_n_0,
      O(3 downto 0) => NLW_count0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count0_carry_i_4_n_0,
      S(2) => count0_carry_i_5_n_0,
      S(1) => count0_carry_i_6_n_0,
      S(0) => count0_carry_i_7_n_0
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3 downto 1) => \NLW_count0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_count0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \count0_carry__0_i_2_n_0\
    );
\count0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(13),
      O => \count0_carry__0_i_1_n_0\
    );
\count0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pause_counter.count_reg\(13),
      I1 => \pause_counter.count_reg\(12),
      O => \count0_carry__0_i_2_n_0\
    );
count0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(10),
      I1 => \pause_counter.count_reg\(11),
      O => count0_carry_i_1_n_0
    );
count0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \pause_counter.count_reg\(8),
      I1 => \pause_counter.count_reg\(9),
      O => count0_carry_i_2_n_0
    );
count0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(4),
      I1 => \pause_counter.count_reg\(5),
      O => count0_carry_i_3_n_0
    );
count0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pause_counter.count_reg\(10),
      I1 => \pause_counter.count_reg\(11),
      O => count0_carry_i_4_n_0
    );
count0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pause_counter.count_reg\(8),
      I1 => \pause_counter.count_reg\(9),
      O => count0_carry_i_5_n_0
    );
count0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(6),
      I1 => \pause_counter.count_reg\(7),
      O => count0_carry_i_6_n_0
    );
count0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pause_counter.count_reg\(4),
      I1 => \pause_counter.count_reg\(5),
      O => count0_carry_i_7_n_0
    );
flipflop_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => button_in,
      Q => flipflop_1,
      R => reset
    );
flipflop_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => flipflop_1,
      Q => flipflop_2,
      R => reset
    );
flipflop_3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => flipflop_1,
      I1 => flipflop_2,
      I2 => \count0_carry__0_n_3\,
      I3 => flipflop_3,
      O => flipflop_3_i_1_n_0
    );
flipflop_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => flipflop_3_i_1_n_0,
      Q => flipflop_3,
      R => reset
    );
flipflop_4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => flipflop_3,
      Q => flipflop_4,
      R => reset
    );
\pause_counter.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => reset,
      I1 => flipflop_1,
      I2 => flipflop_2,
      O => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg_n_0_[0]\,
      O => \pause_counter.count[0]_i_3_n_0\
    );
\pause_counter.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_7\,
      Q => \pause_counter.count_reg_n_0_[0]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pause_counter.count_reg[0]_i_2_n_0\,
      CO(2) => \pause_counter.count_reg[0]_i_2_n_1\,
      CO(1) => \pause_counter.count_reg[0]_i_2_n_2\,
      CO(0) => \pause_counter.count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pause_counter.count_reg[0]_i_2_n_4\,
      O(2) => \pause_counter.count_reg[0]_i_2_n_5\,
      O(1) => \pause_counter.count_reg[0]_i_2_n_6\,
      O(0) => \pause_counter.count_reg[0]_i_2_n_7\,
      S(3) => \pause_counter.count_reg_n_0_[3]\,
      S(2) => \pause_counter.count_reg_n_0_[2]\,
      S(1) => \pause_counter.count_reg_n_0_[1]\,
      S(0) => \pause_counter.count[0]_i_3_n_0\
    );
\pause_counter.count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_5\,
      Q => \pause_counter.count_reg\(10),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_4\,
      Q => \pause_counter.count_reg\(11),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[12]_i_1_n_7\,
      Q => \pause_counter.count_reg\(12),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pause_counter.count_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pause_counter.count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \pause_counter.count_reg[12]_i_1_n_6\,
      O(0) => \pause_counter.count_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \pause_counter.count_reg\(13 downto 12)
    );
\pause_counter.count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[12]_i_1_n_6\,
      Q => \pause_counter.count_reg\(13),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_6\,
      Q => \pause_counter.count_reg_n_0_[1]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_5\,
      Q => \pause_counter.count_reg_n_0_[2]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_4\,
      Q => \pause_counter.count_reg_n_0_[3]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_7\,
      Q => \pause_counter.count_reg\(4),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pause_counter.count_reg[0]_i_2_n_0\,
      CO(3) => \pause_counter.count_reg[4]_i_1_n_0\,
      CO(2) => \pause_counter.count_reg[4]_i_1_n_1\,
      CO(1) => \pause_counter.count_reg[4]_i_1_n_2\,
      CO(0) => \pause_counter.count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pause_counter.count_reg[4]_i_1_n_4\,
      O(2) => \pause_counter.count_reg[4]_i_1_n_5\,
      O(1) => \pause_counter.count_reg[4]_i_1_n_6\,
      O(0) => \pause_counter.count_reg[4]_i_1_n_7\,
      S(3 downto 0) => \pause_counter.count_reg\(7 downto 4)
    );
\pause_counter.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_6\,
      Q => \pause_counter.count_reg\(5),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_5\,
      Q => \pause_counter.count_reg\(6),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_4\,
      Q => \pause_counter.count_reg\(7),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_7\,
      Q => \pause_counter.count_reg\(8),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pause_counter.count_reg[4]_i_1_n_0\,
      CO(3) => \pause_counter.count_reg[8]_i_1_n_0\,
      CO(2) => \pause_counter.count_reg[8]_i_1_n_1\,
      CO(1) => \pause_counter.count_reg[8]_i_1_n_2\,
      CO(0) => \pause_counter.count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pause_counter.count_reg[8]_i_1_n_4\,
      O(2) => \pause_counter.count_reg[8]_i_1_n_5\,
      O(1) => \pause_counter.count_reg[8]_i_1_n_6\,
      O(0) => \pause_counter.count_reg[8]_i_1_n_7\,
      S(3 downto 0) => \pause_counter.count_reg\(11 downto 8)
    );
\pause_counter.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_6\,
      Q => \pause_counter.count_reg\(9),
      R => \pause_counter.count[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_button_debounce_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    button_in : in STD_LOGIC;
    button_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_button_debounce_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_button_debounce_0_0 : entity is "design_1_button_debounce_0_0,button_debounce,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_button_debounce_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_button_debounce_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_button_debounce_0_0 : entity is "button_debounce,Vivado 2024.1";
end design_1_button_debounce_0_0;

architecture STRUCTURE of design_1_button_debounce_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_in1_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.design_1_button_debounce_0_0_button_debounce
     port map (
      button_in => button_in,
      button_out => button_out,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
