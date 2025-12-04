-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Thu Dec  4 18:49:26 2025
-- Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hverma/Projects/DAC_controller/DAC_controller.gen/sources_1/bd/design_1/ip/design_1_pmod_dac_ad5541a_0_0/design_1_pmod_dac_ad5541a_0_0_stub.vhdl
-- Design      : design_1_pmod_dac_ad5541a_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pmod_dac_ad5541a_0_0 is
  Port ( 
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

end design_1_pmod_dac_ad5541a_0_0;

architecture stub of design_1_pmod_dac_ad5541a_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,dac_tx_ena,dac_data[15:0],update_output_n,busy,ldac_n,mosi,sclk,ss_n";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pmod_dac_ad5541a,Vivado 2024.1";
begin
end;
