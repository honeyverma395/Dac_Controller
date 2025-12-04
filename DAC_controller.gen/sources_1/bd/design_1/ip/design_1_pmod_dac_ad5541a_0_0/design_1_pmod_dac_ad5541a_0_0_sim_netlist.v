// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Dec  4 13:02:30 2025
// Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hverma/Projects/DAC_controller/DAC_controller.gen/sources_1/bd/design_1/ip/design_1_pmod_dac_ad5541a_0_0/design_1_pmod_dac_ad5541a_0_0_sim_netlist.v
// Design      : design_1_pmod_dac_ad5541a_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pmod_dac_ad5541a_0_0,pmod_dac_ad5541a,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pmod_dac_ad5541a,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_pmod_dac_ad5541a_0_0
   (clk,
    reset,
    dac_tx_ena,
    dac_data,
    update_output_n,
    busy,
    ldac_n,
    mosi,
    sclk,
    ss_n);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input dac_tx_ena;
  input [15:0]dac_data;
  input update_output_n;
  output busy;
  output ldac_n;
  output mosi;
  output sclk;
  output [0:0]ss_n;

  wire U0_n_3;
  wire busy;
  wire clk;
  wire [15:0]dac_data;
  wire dac_tx_ena;
  wire mosi;
  wire mosi_INST_0_i_1_n_0;
  wire reset;
  wire sclk;
  wire [0:0]ss_n;
  wire update_output_n;

  assign ldac_n = update_output_n;
  design_1_pmod_dac_ad5541a_0_0_pmod_dac_ad5541a U0
       (.busy(busy),
        .clk(clk),
        .dac_data(dac_data),
        .dac_tx_ena(dac_tx_ena),
        .mosi(mosi),
        .mosi_0(mosi_INST_0_i_1_n_0),
        .reset(reset),
        .sclk(sclk),
        .ss_n(ss_n),
        .state_reg(U0_n_3));
  FDCE #(
    .INIT(1'b1)) 
    mosi_INST_0_i_1
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(U0_n_3),
        .Q(mosi_INST_0_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "button_debounce" *) 
module design_1_pmod_dac_ad5541a_0_0_button_debounce
   (flipflop_4_reg_0,
    flipflop_4_reg_1,
    flipflop_4_reg_2,
    E,
    reset,
    dac_tx_ena,
    clk,
    state__0,
    busy_reg,
    count,
    busy,
    \FSM_sequential_state_reg[1]_inv );
  output flipflop_4_reg_0;
  output flipflop_4_reg_1;
  output flipflop_4_reg_2;
  output [0:0]E;
  input reset;
  input dac_tx_ena;
  input clk;
  input [0:0]state__0;
  input busy_reg;
  input count;
  input busy;
  input \FSM_sequential_state_reg[1]_inv ;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[1]_inv ;
  wire busy;
  wire busy_reg;
  wire clk;
  wire count;
  wire count0_carry__0_i_1_n_0;
  wire count0_carry__0_i_2_n_0;
  wire count0_carry__0_n_3;
  wire count0_carry_i_1_n_0;
  wire count0_carry_i_2_n_0;
  wire count0_carry_i_3_n_0;
  wire count0_carry_i_4_n_0;
  wire count0_carry_i_5_n_0;
  wire count0_carry_i_6_n_0;
  wire count0_carry_i_7_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire dac_tx_ena;
  wire flipflop_1;
  wire flipflop_2;
  wire flipflop_3;
  wire flipflop_3_i_1_n_0;
  wire flipflop_4;
  wire flipflop_4_reg_0;
  wire flipflop_4_reg_1;
  wire flipflop_4_reg_2;
  wire \pause_counter.count[0]_i_1_n_0 ;
  wire \pause_counter.count[0]_i_3_n_0 ;
  wire [13:4]\pause_counter.count_reg ;
  wire \pause_counter.count_reg[0]_i_2_n_0 ;
  wire \pause_counter.count_reg[0]_i_2_n_1 ;
  wire \pause_counter.count_reg[0]_i_2_n_2 ;
  wire \pause_counter.count_reg[0]_i_2_n_3 ;
  wire \pause_counter.count_reg[0]_i_2_n_4 ;
  wire \pause_counter.count_reg[0]_i_2_n_5 ;
  wire \pause_counter.count_reg[0]_i_2_n_6 ;
  wire \pause_counter.count_reg[0]_i_2_n_7 ;
  wire \pause_counter.count_reg[12]_i_1_n_3 ;
  wire \pause_counter.count_reg[12]_i_1_n_6 ;
  wire \pause_counter.count_reg[12]_i_1_n_7 ;
  wire \pause_counter.count_reg[4]_i_1_n_0 ;
  wire \pause_counter.count_reg[4]_i_1_n_1 ;
  wire \pause_counter.count_reg[4]_i_1_n_2 ;
  wire \pause_counter.count_reg[4]_i_1_n_3 ;
  wire \pause_counter.count_reg[4]_i_1_n_4 ;
  wire \pause_counter.count_reg[4]_i_1_n_5 ;
  wire \pause_counter.count_reg[4]_i_1_n_6 ;
  wire \pause_counter.count_reg[4]_i_1_n_7 ;
  wire \pause_counter.count_reg[8]_i_1_n_0 ;
  wire \pause_counter.count_reg[8]_i_1_n_1 ;
  wire \pause_counter.count_reg[8]_i_1_n_2 ;
  wire \pause_counter.count_reg[8]_i_1_n_3 ;
  wire \pause_counter.count_reg[8]_i_1_n_4 ;
  wire \pause_counter.count_reg[8]_i_1_n_5 ;
  wire \pause_counter.count_reg[8]_i_1_n_6 ;
  wire \pause_counter.count_reg[8]_i_1_n_7 ;
  wire \pause_counter.count_reg_n_0_[0] ;
  wire \pause_counter.count_reg_n_0_[1] ;
  wire \pause_counter.count_reg_n_0_[2] ;
  wire \pause_counter.count_reg_n_0_[3] ;
  wire reset;
  wire [0:0]state__0;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:1]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0FFFF400)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(flipflop_4),
        .I1(flipflop_3),
        .I2(count),
        .I3(\FSM_sequential_state_reg[1]_inv ),
        .I4(state__0),
        .O(flipflop_4_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0FFFFB00)) 
    \FSM_sequential_state[1]_inv_i_1 
       (.I0(flipflop_4),
        .I1(flipflop_3),
        .I2(state__0),
        .I3(\FSM_sequential_state_reg[1]_inv ),
        .I4(count),
        .O(flipflop_4_reg_1));
  LUT6 #(
    .INIT(64'hFF0FFFFF0F0F0404)) 
    busy_i_1__0
       (.I0(flipflop_4),
        .I1(flipflop_3),
        .I2(state__0),
        .I3(busy_reg),
        .I4(count),
        .I5(busy),
        .O(flipflop_4_reg_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry_i_1_n_0,count0_carry_i_2_n_0,1'b0,count0_carry_i_3_n_0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_4_n_0,count0_carry_i_5_n_0,count0_carry_i_6_n_0,count0_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({NLW_count0_carry__0_CO_UNCONNECTED[3:1],count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,count0_carry__0_i_1_n_0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,count0_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count0_carry__0_i_1
       (.I0(\pause_counter.count_reg [13]),
        .O(count0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count0_carry__0_i_2
       (.I0(\pause_counter.count_reg [13]),
        .I1(\pause_counter.count_reg [12]),
        .O(count0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_1
       (.I0(\pause_counter.count_reg [11]),
        .I1(\pause_counter.count_reg [10]),
        .O(count0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count0_carry_i_2
       (.I0(\pause_counter.count_reg [9]),
        .I1(\pause_counter.count_reg [8]),
        .O(count0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_3
       (.I0(\pause_counter.count_reg [5]),
        .I1(\pause_counter.count_reg [4]),
        .O(count0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count0_carry_i_4
       (.I0(\pause_counter.count_reg [10]),
        .I1(\pause_counter.count_reg [11]),
        .O(count0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count0_carry_i_5
       (.I0(\pause_counter.count_reg [8]),
        .I1(\pause_counter.count_reg [9]),
        .O(count0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_6
       (.I0(\pause_counter.count_reg [7]),
        .I1(\pause_counter.count_reg [6]),
        .O(count0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count0_carry_i_7
       (.I0(\pause_counter.count_reg [4]),
        .I1(\pause_counter.count_reg [5]),
        .O(count0_carry_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(dac_tx_ena),
        .Q(flipflop_1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(flipflop_1),
        .Q(flipflop_2),
        .R(reset));
  LUT4 #(
    .INIT(16'hFE08)) 
    flipflop_3_i_1
       (.I0(flipflop_1),
        .I1(flipflop_2),
        .I2(count0_carry__0_n_3),
        .I3(flipflop_3),
        .O(flipflop_3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(flipflop_3_i_1_n_0),
        .Q(flipflop_3),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_4_reg
       (.C(clk),
        .CE(1'b1),
        .D(flipflop_3),
        .Q(flipflop_4),
        .R(reset));
  LUT3 #(
    .INIT(8'hF6)) 
    \pause_counter.count[0]_i_1 
       (.I0(flipflop_1),
        .I1(flipflop_2),
        .I2(reset),
        .O(\pause_counter.count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pause_counter.count[0]_i_3 
       (.I0(\pause_counter.count_reg_n_0_[0] ),
        .O(\pause_counter.count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[0] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_7 ),
        .Q(\pause_counter.count_reg_n_0_[0] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pause_counter.count_reg[0]_i_2_n_0 ,\pause_counter.count_reg[0]_i_2_n_1 ,\pause_counter.count_reg[0]_i_2_n_2 ,\pause_counter.count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pause_counter.count_reg[0]_i_2_n_4 ,\pause_counter.count_reg[0]_i_2_n_5 ,\pause_counter.count_reg[0]_i_2_n_6 ,\pause_counter.count_reg[0]_i_2_n_7 }),
        .S({\pause_counter.count_reg_n_0_[3] ,\pause_counter.count_reg_n_0_[2] ,\pause_counter.count_reg_n_0_[1] ,\pause_counter.count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[10] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_5 ),
        .Q(\pause_counter.count_reg [10]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[11] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_4 ),
        .Q(\pause_counter.count_reg [11]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[12] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[12]_i_1_n_7 ),
        .Q(\pause_counter.count_reg [12]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[12]_i_1 
       (.CI(\pause_counter.count_reg[8]_i_1_n_0 ),
        .CO({\NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED [3:1],\pause_counter.count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED [3:2],\pause_counter.count_reg[12]_i_1_n_6 ,\pause_counter.count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\pause_counter.count_reg [13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[13] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[12]_i_1_n_6 ),
        .Q(\pause_counter.count_reg [13]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[1] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_6 ),
        .Q(\pause_counter.count_reg_n_0_[1] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[2] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_5 ),
        .Q(\pause_counter.count_reg_n_0_[2] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[3] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_4 ),
        .Q(\pause_counter.count_reg_n_0_[3] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[4] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_7 ),
        .Q(\pause_counter.count_reg [4]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[4]_i_1 
       (.CI(\pause_counter.count_reg[0]_i_2_n_0 ),
        .CO({\pause_counter.count_reg[4]_i_1_n_0 ,\pause_counter.count_reg[4]_i_1_n_1 ,\pause_counter.count_reg[4]_i_1_n_2 ,\pause_counter.count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pause_counter.count_reg[4]_i_1_n_4 ,\pause_counter.count_reg[4]_i_1_n_5 ,\pause_counter.count_reg[4]_i_1_n_6 ,\pause_counter.count_reg[4]_i_1_n_7 }),
        .S(\pause_counter.count_reg [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[5] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_6 ),
        .Q(\pause_counter.count_reg [5]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[6] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_5 ),
        .Q(\pause_counter.count_reg [6]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[7] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_4 ),
        .Q(\pause_counter.count_reg [7]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[8] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_7 ),
        .Q(\pause_counter.count_reg [8]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[8]_i_1 
       (.CI(\pause_counter.count_reg[4]_i_1_n_0 ),
        .CO({\pause_counter.count_reg[8]_i_1_n_0 ,\pause_counter.count_reg[8]_i_1_n_1 ,\pause_counter.count_reg[8]_i_1_n_2 ,\pause_counter.count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pause_counter.count_reg[8]_i_1_n_4 ,\pause_counter.count_reg[8]_i_1_n_5 ,\pause_counter.count_reg[8]_i_1_n_6 ,\pause_counter.count_reg[8]_i_1_n_7 }),
        .S(\pause_counter.count_reg [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[9] 
       (.C(clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_6 ),
        .Q(\pause_counter.count_reg [9]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \spi_tx_data[15]_i_1 
       (.I0(count),
        .I1(state__0),
        .I2(flipflop_3),
        .I3(flipflop_4),
        .O(E));
endmodule

(* ORIG_REF_NAME = "pmod_dac_ad5541a" *) 
module design_1_pmod_dac_ad5541a_0_0_pmod_dac_ad5541a
   (sclk,
    ss_n,
    busy,
    state_reg,
    mosi,
    clk,
    reset,
    dac_tx_ena,
    mosi_0,
    dac_data);
  output sclk;
  output [0:0]ss_n;
  output busy;
  output state_reg;
  output mosi;
  input clk;
  input reset;
  input dac_tx_ena;
  input mosi_0;
  input [15:0]dac_data;

  wire busy;
  wire busy_i_2_n_0;
  wire busy_i_3_n_0;
  wire busy_i_4_n_0;
  wire clk;
  wire count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[13]_i_2_n_0 ;
  wire \count[13]_i_3_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [15:0]dac_data;
  wire dac_tx_ena;
  wire mosi;
  wire mosi_0;
  wire [13:1]p_1_in;
  wire reset;
  wire sclk;
  wire spi_busy;
  wire spi_busy_prev;
  wire spi_ena_reg_n_0;
  wire spi_master_0_n_3;
  wire spi_master_0_n_6;
  wire spi_tx_data;
  wire [0:0]ss_n;
  wire [0:0]state__0;
  wire state_reg;
  wire tx_button_controller_n_0;
  wire tx_button_controller_n_1;
  wire tx_button_controller_n_2;
  wire [15:0]tx_data;
  wire [3:0]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_count0_carry__2_O_UNCONNECTED;

  (* FSM_ENCODED_STATES = "pause:01,ready:10,start:00,send_data:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(tx_button_controller_n_2),
        .Q(state__0));
  (* FSM_ENCODED_STATES = "pause:01,ready:10,start:00,send_data:11" *) 
  (* inverted = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[1]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(tx_button_controller_n_1),
        .PRE(reset),
        .Q(count));
  LUT5 #(
    .INIT(32'h00000001)) 
    busy_i_2
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(busy_i_3_n_0),
        .I4(busy_i_4_n_0),
        .O(busy_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    busy_i_3
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[6] ),
        .O(busy_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    busy_i_4
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[12] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[13] ),
        .I5(\count_reg_n_0_[9] ),
        .O(busy_i_4_n_0));
  FDPE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_button_controller_n_0),
        .PRE(reset),
        .Q(busy));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO(NLW_count0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__2_O_UNCONNECTED[3:1],p_1_in[13]}),
        .S({1'b0,1'b0,1'b0,\count_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00C5)) 
    \count[0]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[10]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[10]),
        .O(\count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[11]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[11]),
        .O(\count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[12]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[12]),
        .O(\count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[13]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[13]),
        .O(\count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA888888888888888)) 
    \count[13]_i_2 
       (.I0(\count_reg_n_0_[13] ),
        .I1(\count[13]_i_3_n_0 ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[10] ),
        .I5(busy_i_3_n_0),
        .O(\count[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[13]_i_3 
       (.I0(\count_reg_n_0_[12] ),
        .I1(\count_reg_n_0_[11] ),
        .O(\count[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[1]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[2]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[3]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[4]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[5]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[5]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[6]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[6]),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[7]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[7]),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[8]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[8]),
        .O(\count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hC500)) 
    \count[9]_i_1 
       (.I0(\count[13]_i_2_n_0 ),
        .I1(busy_i_2_n_0),
        .I2(state__0),
        .I3(p_1_in[9]),
        .O(\count[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[10]_i_1_n_0 ),
        .Q(\count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[11]_i_1_n_0 ),
        .Q(\count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[12]_i_1_n_0 ),
        .Q(\count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[13]_i_1_n_0 ),
        .Q(\count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[4]_i_1_n_0 ),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[5]_i_1_n_0 ),
        .Q(\count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[6]_i_1_n_0 ),
        .Q(\count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[7]_i_1_n_0 ),
        .Q(\count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[8]_i_1_n_0 ),
        .Q(\count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(\count[9]_i_1_n_0 ),
        .Q(\count_reg_n_0_[9] ));
  FDCE spi_busy_prev_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(spi_busy),
        .Q(spi_busy_prev));
  FDCE spi_ena_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(spi_master_0_n_3),
        .Q(spi_ena_reg_n_0));
  design_1_pmod_dac_ad5541a_0_0_spi_master spi_master_0
       (.E(spi_tx_data),
        .\FSM_sequential_state_reg[0] (spi_master_0_n_6),
        .\FSM_sequential_state_reg[1]_inv (\count[13]_i_2_n_0 ),
        .\FSM_sequential_state_reg[1]_inv_0 (busy_i_2_n_0),
        .Q(tx_data),
        .busy_reg_0(spi_master_0_n_3),
        .clk(clk),
        .count(count),
        .\count_reg[1]_0 (spi_ena_reg_n_0),
        .mosi(mosi),
        .mosi_0(mosi_0),
        .reset(reset),
        .sclk(sclk),
        .spi_busy(spi_busy),
        .spi_busy_prev(spi_busy_prev),
        .ss_n(ss_n),
        .state__0(state__0),
        .state_reg_0(state_reg));
  FDCE \spi_tx_data_reg[0] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[0]),
        .Q(tx_data[0]));
  FDCE \spi_tx_data_reg[10] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[10]),
        .Q(tx_data[10]));
  FDCE \spi_tx_data_reg[11] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[11]),
        .Q(tx_data[11]));
  FDCE \spi_tx_data_reg[12] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[12]),
        .Q(tx_data[12]));
  FDCE \spi_tx_data_reg[13] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[13]),
        .Q(tx_data[13]));
  FDCE \spi_tx_data_reg[14] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[14]),
        .Q(tx_data[14]));
  FDCE \spi_tx_data_reg[15] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[15]),
        .Q(tx_data[15]));
  FDCE \spi_tx_data_reg[1] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[1]),
        .Q(tx_data[1]));
  FDCE \spi_tx_data_reg[2] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[2]),
        .Q(tx_data[2]));
  FDCE \spi_tx_data_reg[3] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[3]),
        .Q(tx_data[3]));
  FDCE \spi_tx_data_reg[4] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[4]),
        .Q(tx_data[4]));
  FDCE \spi_tx_data_reg[5] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[5]),
        .Q(tx_data[5]));
  FDCE \spi_tx_data_reg[6] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[6]),
        .Q(tx_data[6]));
  FDCE \spi_tx_data_reg[7] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[7]),
        .Q(tx_data[7]));
  FDCE \spi_tx_data_reg[8] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[8]),
        .Q(tx_data[8]));
  FDCE \spi_tx_data_reg[9] 
       (.C(clk),
        .CE(spi_tx_data),
        .CLR(reset),
        .D(dac_data[9]),
        .Q(tx_data[9]));
  design_1_pmod_dac_ad5541a_0_0_button_debounce tx_button_controller
       (.E(spi_tx_data),
        .\FSM_sequential_state_reg[1]_inv (spi_master_0_n_6),
        .busy(busy),
        .busy_reg(busy_i_2_n_0),
        .clk(clk),
        .count(count),
        .dac_tx_ena(dac_tx_ena),
        .flipflop_4_reg_0(tx_button_controller_n_0),
        .flipflop_4_reg_1(tx_button_controller_n_1),
        .flipflop_4_reg_2(tx_button_controller_n_2),
        .reset(reset),
        .state__0(state__0));
endmodule

(* ORIG_REF_NAME = "spi_master" *) 
module design_1_pmod_dac_ad5541a_0_0_spi_master
   (spi_busy,
    sclk,
    ss_n,
    busy_reg_0,
    state_reg_0,
    mosi,
    \FSM_sequential_state_reg[0] ,
    clk,
    reset,
    \count_reg[1]_0 ,
    spi_busy_prev,
    state__0,
    count,
    mosi_0,
    Q,
    E,
    \FSM_sequential_state_reg[1]_inv ,
    \FSM_sequential_state_reg[1]_inv_0 );
  output spi_busy;
  output sclk;
  output [0:0]ss_n;
  output busy_reg_0;
  output state_reg_0;
  output mosi;
  output \FSM_sequential_state_reg[0] ;
  input clk;
  input reset;
  input \count_reg[1]_0 ;
  input spi_busy_prev;
  input [0:0]state__0;
  input count;
  input mosi_0;
  input [15:0]Q;
  input [0:0]E;
  input \FSM_sequential_state_reg[1]_inv ;
  input \FSM_sequential_state_reg[1]_inv_0 ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1]_inv ;
  wire \FSM_sequential_state_reg[1]_inv_0 ;
  wire [15:0]Q;
  wire assert_data_i_1_n_0;
  wire assert_data_reg_n_0;
  wire busy1;
  wire busy120_out;
  wire busy1_carry__0_i_1_n_0;
  wire busy1_carry__0_i_2_n_0;
  wire busy1_carry__0_i_3_n_0;
  wire busy1_carry__0_i_4_n_0;
  wire busy1_carry__0_n_0;
  wire busy1_carry__0_n_1;
  wire busy1_carry__0_n_2;
  wire busy1_carry__0_n_3;
  wire busy1_carry__1_i_1_n_0;
  wire busy1_carry__1_i_2_n_0;
  wire busy1_carry__1_i_3_n_0;
  wire busy1_carry__1_n_2;
  wire busy1_carry__1_n_3;
  wire busy1_carry_i_1_n_0;
  wire busy1_carry_i_2_n_0;
  wire busy1_carry_i_3_n_0;
  wire busy1_carry_i_4_n_0;
  wire busy1_carry_n_0;
  wire busy1_carry_n_1;
  wire busy1_carry_n_2;
  wire busy1_carry_n_3;
  wire busy_i_1_n_0;
  wire busy_reg_0;
  wire clk;
  wire [31:31]clk_ratio;
  wire \clk_ratio[31]_i_1_n_0 ;
  wire [5:0]clk_toggles;
  wire clk_toggles0;
  wire \clk_toggles[5]_i_1_n_0 ;
  wire \clk_toggles_reg_n_0_[0] ;
  wire \clk_toggles_reg_n_0_[1] ;
  wire \clk_toggles_reg_n_0_[2] ;
  wire \clk_toggles_reg_n_0_[3] ;
  wire \clk_toggles_reg_n_0_[4] ;
  wire \clk_toggles_reg_n_0_[5] ;
  wire count;
  wire [31:1]count0;
  wire count0_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count_reg[1]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [4:4]last_bit_rx;
  wire \last_bit_rx[4]_i_1_n_0 ;
  wire mosi;
  wire mosi0__0;
  wire mosi_0;
  wire mosi_tristate_oe_i_1_n_0;
  wire mosi_tristate_oe_reg_n_0;
  wire reset;
  wire sclk;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire spi_busy;
  wire spi_busy_prev;
  wire [0:0]ss_n;
  wire \ss_n[0]_i_1_n_0 ;
  wire [0:0]state__0;
  wire state_i_1_n_0;
  wire state_reg_0;
  wire state_reg_n_0;
  wire tx_buffer0;
  wire \tx_buffer[0]_i_1_n_0 ;
  wire \tx_buffer[10]_i_1_n_0 ;
  wire \tx_buffer[11]_i_1_n_0 ;
  wire \tx_buffer[12]_i_1_n_0 ;
  wire \tx_buffer[13]_i_1_n_0 ;
  wire \tx_buffer[14]_i_1_n_0 ;
  wire \tx_buffer[15]_i_2_n_0 ;
  wire \tx_buffer[15]_i_4_n_0 ;
  wire \tx_buffer[1]_i_1_n_0 ;
  wire \tx_buffer[2]_i_1_n_0 ;
  wire \tx_buffer[3]_i_1_n_0 ;
  wire \tx_buffer[4]_i_1_n_0 ;
  wire \tx_buffer[5]_i_1_n_0 ;
  wire \tx_buffer[6]_i_1_n_0 ;
  wire \tx_buffer[7]_i_1_n_0 ;
  wire \tx_buffer[8]_i_1_n_0 ;
  wire \tx_buffer[9]_i_1_n_0 ;
  wire \tx_buffer_reg_n_0_[0] ;
  wire \tx_buffer_reg_n_0_[10] ;
  wire \tx_buffer_reg_n_0_[11] ;
  wire \tx_buffer_reg_n_0_[12] ;
  wire \tx_buffer_reg_n_0_[13] ;
  wire \tx_buffer_reg_n_0_[14] ;
  wire \tx_buffer_reg_n_0_[15] ;
  wire \tx_buffer_reg_n_0_[1] ;
  wire \tx_buffer_reg_n_0_[2] ;
  wire \tx_buffer_reg_n_0_[3] ;
  wire \tx_buffer_reg_n_0_[4] ;
  wire \tx_buffer_reg_n_0_[5] ;
  wire \tx_buffer_reg_n_0_[6] ;
  wire \tx_buffer_reg_n_0_[7] ;
  wire \tx_buffer_reg_n_0_[8] ;
  wire \tx_buffer_reg_n_0_[9] ;
  wire [3:0]NLW_busy1_carry_O_UNCONNECTED;
  wire [3:0]NLW_busy1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_busy1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_busy1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hCFECCCECFFECFCEC)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(E),
        .I2(state__0),
        .I3(count),
        .I4(\FSM_sequential_state_reg[1]_inv ),
        .I5(\FSM_sequential_state_reg[1]_inv_0 ),
        .O(\FSM_sequential_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(spi_busy_prev),
        .I1(spi_busy),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCFFF3022)) 
    assert_data_i_1
       (.I0(\count_reg[1]_0 ),
        .I1(reset),
        .I2(busy1),
        .I3(state_reg_n_0),
        .I4(assert_data_reg_n_0),
        .O(assert_data_i_1_n_0));
  FDRE assert_data_reg
       (.C(clk),
        .CE(1'b1),
        .D(assert_data_i_1_n_0),
        .Q(assert_data_reg_n_0),
        .R(1'b0));
  CARRY4 busy1_carry
       (.CI(1'b0),
        .CO({busy1_carry_n_0,busy1_carry_n_1,busy1_carry_n_2,busy1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry_O_UNCONNECTED[3:0]),
        .S({busy1_carry_i_1_n_0,busy1_carry_i_2_n_0,busy1_carry_i_3_n_0,busy1_carry_i_4_n_0}));
  CARRY4 busy1_carry__0
       (.CI(busy1_carry_n_0),
        .CO({busy1_carry__0_n_0,busy1_carry__0_n_1,busy1_carry__0_n_2,busy1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry__0_O_UNCONNECTED[3:0]),
        .S({busy1_carry__0_i_1_n_0,busy1_carry__0_i_2_n_0,busy1_carry__0_i_3_n_0,busy1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_1
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .I2(\count_reg_n_0_[21] ),
        .O(busy1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_2
       (.I0(\count_reg_n_0_[20] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[18] ),
        .O(busy1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_3
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[16] ),
        .I2(\count_reg_n_0_[15] ),
        .O(busy1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__0_i_4
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[12] ),
        .O(busy1_carry__0_i_4_n_0));
  CARRY4 busy1_carry__1
       (.CI(busy1_carry__0_n_0),
        .CO({NLW_busy1_carry__1_CO_UNCONNECTED[3],busy1,busy1_carry__1_n_2,busy1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_busy1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,busy1_carry__1_i_1_n_0,busy1_carry__1_i_2_n_0,busy1_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h21)) 
    busy1_carry__1_i_1
       (.I0(clk_ratio),
        .I1(\count_reg_n_0_[30] ),
        .I2(\count_reg_n_0_[31] ),
        .O(busy1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__1_i_2
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[27] ),
        .O(busy1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry__1_i_3
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[25] ),
        .I2(\count_reg_n_0_[24] ),
        .O(busy1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_1
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[9] ),
        .O(busy1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_2
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[6] ),
        .O(busy1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    busy1_carry_i_3
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .O(busy1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    busy1_carry_i_4
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(last_bit_rx),
        .I3(\count_reg_n_0_[0] ),
        .O(busy1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h5FCC)) 
    busy_i_1
       (.I0(busy1),
        .I1(\count_reg[1]_0 ),
        .I2(busy120_out),
        .I3(state_reg_n_0),
        .O(busy_i_1_n_0));
  FDPE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(reset),
        .Q(spi_busy));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB00)) 
    \clk_ratio[31]_i_1 
       (.I0(state_reg_n_0),
        .I1(\count_reg[1]_0 ),
        .I2(reset),
        .I3(clk_ratio),
        .O(\clk_ratio[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \clk_ratio_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_ratio[31]_i_1_n_0 ),
        .Q(clk_ratio),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_toggles[0]_i_1 
       (.I0(\clk_toggles_reg_n_0_[0] ),
        .O(clk_toggles[0]));
  LUT6 #(
    .INIT(64'h0F0EF0F00F0FF0F0)) 
    \clk_toggles[1]_i_1 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[3] ),
        .I2(\clk_toggles_reg_n_0_[1] ),
        .I3(\clk_toggles_reg_n_0_[4] ),
        .I4(\clk_toggles_reg_n_0_[0] ),
        .I5(\clk_toggles_reg_n_0_[5] ),
        .O(clk_toggles[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clk_toggles[2]_i_1 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[1] ),
        .I2(\clk_toggles_reg_n_0_[0] ),
        .O(clk_toggles[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_toggles[3]_i_1 
       (.I0(\clk_toggles_reg_n_0_[1] ),
        .I1(\clk_toggles_reg_n_0_[0] ),
        .I2(\clk_toggles_reg_n_0_[2] ),
        .I3(\clk_toggles_reg_n_0_[3] ),
        .O(clk_toggles[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_toggles[4]_i_1 
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[0] ),
        .I2(\clk_toggles_reg_n_0_[1] ),
        .I3(\clk_toggles_reg_n_0_[3] ),
        .I4(\clk_toggles_reg_n_0_[4] ),
        .O(clk_toggles[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \clk_toggles[5]_i_1 
       (.I0(state_reg_n_0),
        .I1(\count_reg[1]_0 ),
        .I2(reset),
        .O(\clk_toggles[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \clk_toggles[5]_i_2 
       (.I0(state_reg_n_0),
        .I1(busy1),
        .I2(reset),
        .O(clk_toggles0));
  LUT6 #(
    .INIT(64'h7FFFFFEF80000000)) 
    \clk_toggles[5]_i_3 
       (.I0(\clk_toggles_reg_n_0_[3] ),
        .I1(\clk_toggles_reg_n_0_[1] ),
        .I2(\clk_toggles_reg_n_0_[0] ),
        .I3(\clk_toggles_reg_n_0_[2] ),
        .I4(\clk_toggles_reg_n_0_[4] ),
        .I5(\clk_toggles_reg_n_0_[5] ),
        .O(clk_toggles[5]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[0] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[0]),
        .Q(\clk_toggles_reg_n_0_[0] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[1] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[1]),
        .Q(\clk_toggles_reg_n_0_[1] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[2] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[2]),
        .Q(\clk_toggles_reg_n_0_[2] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[3] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[3]),
        .Q(\clk_toggles_reg_n_0_[3] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[4] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[4]),
        .Q(\clk_toggles_reg_n_0_[4] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[5] 
       (.C(clk),
        .CE(clk_toggles0),
        .D(clk_toggles[5]),
        .Q(\clk_toggles_reg_n_0_[5] ),
        .R(\clk_toggles[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0[31:29]}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'hFBFB0F0C)) 
    \count[0]_i_1 
       (.I0(busy1),
        .I1(state_reg_n_0),
        .I2(reset),
        .I3(\count_reg[1]_0 ),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \count[31]_i_1 
       (.I0(busy1),
        .I1(\count_reg[1]_0 ),
        .I2(reset),
        .I3(state_reg_n_0),
        .O(\count[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \count[31]_i_2 
       (.I0(state_reg_n_0),
        .I1(reset),
        .I2(\count_reg[1]_0 ),
        .O(count0_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[12]),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[13]),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[14]),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[15]),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[16]),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[17]),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[18]),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[19]),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[20]),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[21]),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[22]),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[23]),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[24]),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[25]),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[26]),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[27]),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[28]),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[29]),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[30]),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[31] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[31]),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(count0_0),
        .D(count0[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    \last_bit_rx[4]_i_1 
       (.I0(reset),
        .I1(\count_reg[1]_0 ),
        .I2(state_reg_n_0),
        .I3(last_bit_rx),
        .O(\last_bit_rx[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_bit_rx_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\last_bit_rx[4]_i_1_n_0 ),
        .Q(last_bit_rx),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    mosi_INST_0
       (.I0(mosi_tristate_oe_reg_n_0),
        .I1(mosi_0),
        .O(mosi));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h22AA2000)) 
    mosi_INST_0_i_2
       (.I0(state_reg_n_0),
        .I1(busy120_out),
        .I2(mosi0__0),
        .I3(busy1),
        .I4(mosi_0),
        .O(state_reg_0));
  LUT6 #(
    .INIT(64'hAAAEEEEEAAA22222)) 
    mosi_tristate_oe_i_1
       (.I0(\tx_buffer_reg_n_0_[15] ),
        .I1(state_reg_n_0),
        .I2(busy120_out),
        .I3(mosi0__0),
        .I4(busy1),
        .I5(mosi_tristate_oe_reg_n_0),
        .O(mosi_tristate_oe_i_1_n_0));
  FDRE mosi_tristate_oe_reg
       (.C(clk),
        .CE(1'b1),
        .D(mosi_tristate_oe_i_1_n_0),
        .Q(mosi_tristate_oe_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEBBBBBEEEEEEEE)) 
    sclk_i_1
       (.I0(\clk_toggles[5]_i_1_n_0 ),
        .I1(sclk),
        .I2(sclk_i_2_n_0),
        .I3(\clk_toggles_reg_n_0_[0] ),
        .I4(\clk_toggles_reg_n_0_[5] ),
        .I5(clk_toggles0),
        .O(sclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sclk_i_2
       (.I0(\clk_toggles_reg_n_0_[2] ),
        .I1(\clk_toggles_reg_n_0_[3] ),
        .I2(\clk_toggles_reg_n_0_[1] ),
        .I3(\clk_toggles_reg_n_0_[4] ),
        .O(sclk_i_2_n_0));
  FDRE sclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(sclk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF5F0010)) 
    spi_ena_i_1
       (.I0(spi_busy),
        .I1(spi_busy_prev),
        .I2(state__0),
        .I3(count),
        .I4(\count_reg[1]_0 ),
        .O(busy_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ss_n[0]_i_1 
       (.I0(state_reg_n_0),
        .I1(busy1),
        .I2(busy120_out),
        .O(\ss_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \ss_n[0]_i_2 
       (.I0(\clk_toggles_reg_n_0_[5] ),
        .I1(\clk_toggles_reg_n_0_[0] ),
        .I2(\clk_toggles_reg_n_0_[4] ),
        .I3(\clk_toggles_reg_n_0_[1] ),
        .I4(\clk_toggles_reg_n_0_[3] ),
        .I5(\clk_toggles_reg_n_0_[2] ),
        .O(busy120_out));
  FDCE \ss_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\ss_n[0]_i_1_n_0 ),
        .Q(ss_n));
  LUT4 #(
    .INIT(16'h7F70)) 
    state_i_1
       (.I0(busy120_out),
        .I1(busy1),
        .I2(state_reg_n_0),
        .I3(\count_reg[1]_0 ),
        .O(state_i_1_n_0));
  FDCE state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_buffer[0]_i_1 
       (.I0(Q[0]),
        .I1(state_reg_n_0),
        .O(\tx_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[10]_i_1 
       (.I0(\tx_buffer_reg_n_0_[9] ),
        .I1(state_reg_n_0),
        .I2(Q[10]),
        .O(\tx_buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[11]_i_1 
       (.I0(\tx_buffer_reg_n_0_[10] ),
        .I1(state_reg_n_0),
        .I2(Q[11]),
        .O(\tx_buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[12]_i_1 
       (.I0(\tx_buffer_reg_n_0_[11] ),
        .I1(state_reg_n_0),
        .I2(Q[12]),
        .O(\tx_buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[13]_i_1 
       (.I0(\tx_buffer_reg_n_0_[12] ),
        .I1(state_reg_n_0),
        .I2(Q[13]),
        .O(\tx_buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[14]_i_1 
       (.I0(\tx_buffer_reg_n_0_[13] ),
        .I1(state_reg_n_0),
        .I2(Q[14]),
        .O(\tx_buffer[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08080F00)) 
    \tx_buffer[15]_i_1 
       (.I0(mosi0__0),
        .I1(busy1),
        .I2(reset),
        .I3(\count_reg[1]_0 ),
        .I4(state_reg_n_0),
        .O(tx_buffer0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[15]_i_2 
       (.I0(\tx_buffer_reg_n_0_[14] ),
        .I1(state_reg_n_0),
        .I2(Q[15]),
        .O(\tx_buffer[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4040004040404040)) 
    \tx_buffer[15]_i_3 
       (.I0(\clk_toggles_reg_n_0_[5] ),
        .I1(assert_data_reg_n_0),
        .I2(last_bit_rx),
        .I3(\clk_toggles_reg_n_0_[4] ),
        .I4(\tx_buffer[15]_i_4_n_0 ),
        .I5(\clk_toggles_reg_n_0_[3] ),
        .O(mosi0__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \tx_buffer[15]_i_4 
       (.I0(\clk_toggles_reg_n_0_[1] ),
        .I1(\clk_toggles_reg_n_0_[0] ),
        .I2(\clk_toggles_reg_n_0_[2] ),
        .O(\tx_buffer[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[1]_i_1 
       (.I0(\tx_buffer_reg_n_0_[0] ),
        .I1(state_reg_n_0),
        .I2(Q[1]),
        .O(\tx_buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[2]_i_1 
       (.I0(\tx_buffer_reg_n_0_[1] ),
        .I1(state_reg_n_0),
        .I2(Q[2]),
        .O(\tx_buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[3]_i_1 
       (.I0(\tx_buffer_reg_n_0_[2] ),
        .I1(state_reg_n_0),
        .I2(Q[3]),
        .O(\tx_buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[4]_i_1 
       (.I0(\tx_buffer_reg_n_0_[3] ),
        .I1(state_reg_n_0),
        .I2(Q[4]),
        .O(\tx_buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[5]_i_1 
       (.I0(\tx_buffer_reg_n_0_[4] ),
        .I1(state_reg_n_0),
        .I2(Q[5]),
        .O(\tx_buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[6]_i_1 
       (.I0(\tx_buffer_reg_n_0_[5] ),
        .I1(state_reg_n_0),
        .I2(Q[6]),
        .O(\tx_buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[7]_i_1 
       (.I0(\tx_buffer_reg_n_0_[6] ),
        .I1(state_reg_n_0),
        .I2(Q[7]),
        .O(\tx_buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[8]_i_1 
       (.I0(\tx_buffer_reg_n_0_[7] ),
        .I1(state_reg_n_0),
        .I2(Q[8]),
        .O(\tx_buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_buffer[9]_i_1 
       (.I0(\tx_buffer_reg_n_0_[8] ),
        .I1(state_reg_n_0),
        .I2(Q[9]),
        .O(\tx_buffer[9]_i_1_n_0 ));
  FDRE \tx_buffer_reg[0] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[0]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[10] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[10]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[11] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[11]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[12] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[12]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[13] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[13]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[14] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[14]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[15] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[15]_i_2_n_0 ),
        .Q(\tx_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[1] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[1]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[2] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[2]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[3] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[3]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[4] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[4]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[5] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[5]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[6] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[6]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[7] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[7]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[8] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[8]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tx_buffer_reg[9] 
       (.C(clk),
        .CE(tx_buffer0),
        .D(\tx_buffer[9]_i_1_n_0 ),
        .Q(\tx_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
