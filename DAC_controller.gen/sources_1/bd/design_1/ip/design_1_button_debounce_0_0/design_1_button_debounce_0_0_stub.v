// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Dec  4 12:06:06 2025
// Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hverma/Projects/DAC_controller/DAC_controller.gen/sources_1/bd/design_1/ip/design_1_button_debounce_0_0/design_1_button_debounce_0_0_stub.v
// Design      : design_1_button_debounce_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "button_debounce,Vivado 2024.1" *)
module design_1_button_debounce_0_0(clk, reset, button_in, button_out)
/* synthesis syn_black_box black_box_pad_pin="reset,button_in,button_out" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input button_in;
  output button_out;
endmodule
