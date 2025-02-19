// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Tue Aug  6 13:38:49 2019
// Host        : idlab52-OptiPlex-790 running 64-bit Ubuntu 14.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/idlab-52/salvador_fork/fix_WR_address/watchman-readout/FMC_TargetC_Prototype/hw/bd/base_zynq/ip/base_zynq_iobuf_0_0/base_zynq_iobuf_0_0_stub.v
// Design      : base_zynq_iobuf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "iobuf,Vivado 2018.2" *)
module base_zynq_iobuf_0_0(O, IO, I, T)
/* synthesis syn_black_box black_box_pad_pin="O,IO,I,T" */;
  output O;
  inout IO;
  input I;
  input T;
endmodule
