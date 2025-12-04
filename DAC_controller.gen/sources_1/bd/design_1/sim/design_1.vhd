--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Thu Dec  4 18:16:11 2025
--Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    btn : in STD_LOGIC_VECTOR ( 0 to 3 );
    ja0 : out STD_LOGIC;
    ja1 : out STD_LOGIC;
    ja2 : out STD_LOGIC;
    ja3 : out STD_LOGIC;
    jb0 : out STD_LOGIC;
    jb1 : out STD_LOGIC;
    led0 : out STD_LOGIC;
    sw0 : in STD_LOGIC;
    sw1 : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_pmod_dac_ad5541a_0_0 is
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
  end component design_1_pmod_dac_ad5541a_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconstant_1_1;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal pmod_dac_ad5541a_0_busy : STD_LOGIC;
  signal pmod_dac_ad5541a_0_ldac_n : STD_LOGIC;
  signal pmod_dac_ad5541a_0_mosi : STD_LOGIC;
  signal pmod_dac_ad5541a_0_sclk : STD_LOGIC;
  signal pmod_dac_ad5541a_0_ss_n : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  signal sw0_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sw1 : signal is "xilinx.com:signal:reset:1.0 RST.SW1 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sw1 : signal is "XIL_INTERFACENAME RST.SW1, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sysclk : signal is "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK";
  attribute X_INTERFACE_PARAMETER of sysclk : signal is "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  clk_in1_0_1 <= sysclk;
  ja0 <= pmod_dac_ad5541a_0_ss_n;
  ja1 <= pmod_dac_ad5541a_0_mosi;
  ja2 <= pmod_dac_ad5541a_0_ldac_n;
  ja3 <= pmod_dac_ad5541a_0_sclk;
  jb0 <= clk_in1_0_1;
  jb1 <= clk_wiz_0_clk_out1;
  led0 <= pmod_dac_ad5541a_0_busy;
  reset_0_1 <= sw1;
  sw0_1 <= sw0;
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => reset_0_1
    );
pmod_dac_ad5541a_0: component design_1_pmod_dac_ad5541a_0_0
     port map (
      busy => pmod_dac_ad5541a_0_busy,
      clk => clk_wiz_0_clk_out1,
      dac_data(15 downto 0) => xlconcat_0_dout(15 downto 0),
      dac_tx_ena => sw0_1,
      ldac_n => pmod_dac_ad5541a_0_ldac_n,
      mosi => pmod_dac_ad5541a_0_mosi,
      reset => reset_0_1,
      sclk => pmod_dac_ad5541a_0_sclk,
      ss_n => pmod_dac_ad5541a_0_ss_n,
      update_output_n => xlconstant_0_dout(0)
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(15 downto 0) => xlconstant_1_dout(15 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_1_1
     port map (
      dout(15 downto 0) => xlconstant_1_dout(15 downto 0)
    );
end STRUCTURE;
