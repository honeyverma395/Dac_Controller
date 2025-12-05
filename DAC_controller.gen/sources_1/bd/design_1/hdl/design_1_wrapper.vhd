--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Fri Dec  5 12:35:07 2025
--Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    btn : in STD_LOGIC_VECTOR ( 0 to 3 );
    ja : out STD_LOGIC_VECTOR ( 0 to 0 );
    ja1 : out STD_LOGIC;
    ja2 : out STD_LOGIC;
    ja3 : out STD_LOGIC;
    led0 : out STD_LOGIC;
    sw0 : in STD_LOGIC;
    sw1 : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ja2 : out STD_LOGIC;
    ja1 : out STD_LOGIC;
    ja3 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 3 );
    led0 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    sw1 : in STD_LOGIC;
    sw0 : in STD_LOGIC;
    ja : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      btn(0 to 3) => btn(0 to 3),
      ja(0) => ja(0),
      ja1 => ja1,
      ja2 => ja2,
      ja3 => ja3,
      led0 => led0,
      sw0 => sw0,
      sw1 => sw1,
      sysclk => sysclk
    );
end STRUCTURE;
