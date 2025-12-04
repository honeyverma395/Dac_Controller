// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Dec  4 12:06:06 2025
// Host        : HV-laptop running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hverma/Projects/DAC_controller/DAC_controller.gen/sources_1/bd/design_1/ip/design_1_button_debounce_0_0/design_1_button_debounce_0_0_sim_netlist.v
// Design      : design_1_button_debounce_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_button_debounce_0_0,button_debounce,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "button_debounce,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_button_debounce_0_0
   (clk,
    reset,
    button_in,
    button_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input button_in;
  output button_out;

  wire button_in;
  wire button_out;
  wire clk;
  wire reset;

  design_1_button_debounce_0_0_button_debounce U0
       (.button_in(button_in),
        .button_out(button_out),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "button_debounce" *) 
module design_1_button_debounce_0_0_button_debounce
   (button_out,
    reset,
    button_in,
    clk);
  output button_out;
  input reset;
  input button_in;
  input clk;

  wire button_in;
  wire button_out;
  wire clk;
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
  wire flipflop_1;
  wire flipflop_2;
  wire flipflop_3;
  wire flipflop_3_i_1_n_0;
  wire flipflop_4;
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
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:1]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    button_out_INST_0
       (.I0(flipflop_3),
        .I1(flipflop_4),
        .O(button_out));
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
       (.I0(\pause_counter.count_reg [10]),
        .I1(\pause_counter.count_reg [11]),
        .O(count0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count0_carry_i_2
       (.I0(\pause_counter.count_reg [8]),
        .I1(\pause_counter.count_reg [9]),
        .O(count0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_3
       (.I0(\pause_counter.count_reg [4]),
        .I1(\pause_counter.count_reg [5]),
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
       (.I0(\pause_counter.count_reg [6]),
        .I1(\pause_counter.count_reg [7]),
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
        .D(button_in),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
    .INIT(8'hBE)) 
    \pause_counter.count[0]_i_1 
       (.I0(reset),
        .I1(flipflop_1),
        .I2(flipflop_2),
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
