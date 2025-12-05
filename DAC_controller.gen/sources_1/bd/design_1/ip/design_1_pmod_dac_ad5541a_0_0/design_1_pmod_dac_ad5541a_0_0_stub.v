// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Dec  5 12:35:31 2025
// Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hverma/Projects/DAC_controller/DAC_controller.gen/sources_1/bd/design_1/ip/design_1_pmod_dac_ad5541a_0_0/design_1_pmod_dac_ad5541a_0_0_stub.v
// Design      : design_1_pmod_dac_ad5541a_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pmod_dac_ad5541a,Vivado 2024.1" *)
module design_1_pmod_dac_ad5541a_0_0(clk, reset, dac_tx_ena, dac_data, 
  update_output_n, busy, ldac_n, mosi, sclk, ss_n)
/* synthesis syn_black_box black_box_pad_pin="reset,dac_tx_ena,dac_data[15:0],update_output_n,busy,ldac_n,mosi,sclk,ss_n[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input dac_tx_ena;
  input [15:0]dac_data;
  input update_output_n;
  output busy;
  output ldac_n;
  output mosi;
  output sclk;
  output [0:0]ss_n;
endmodule
