// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Tue Aug  6 13:38:49 2019
// Host        : idlab52-OptiPlex-790 running 64-bit Ubuntu 14.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/idlab-52/salvador_fork/fix_WR_address/watchman-readout/FMC_TargetC_Prototype/hw/bd/base_zynq/ip/base_zynq_iobuf_0_0/base_zynq_iobuf_0_0_sim_netlist.v
// Design      : base_zynq_iobuf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "base_zynq_iobuf_0_0,iobuf,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "iobuf,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module base_zynq_iobuf_0_0
   (O,
    IO,
    I,
    T);
  output O;
  inout IO;
  input I;
  input T;

  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire I;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire IO;
  (* IBUF_LOW_PWR *) wire O;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire T;

  base_zynq_iobuf_0_0_xil_defaultlib_iobuf U0
       (.I(I),
        .IO(IO),
        .O(O),
        .T(T));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_iobuf" *) 
module base_zynq_iobuf_0_0_xil_defaultlib_iobuf
   (O,
    IO,
    I,
    T);
  output O;
  inout IO;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    IBUF_inst
       (.I(IO),
        .O(O));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_inst
       (.I(I),
        .O(IO),
        .T(T));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
