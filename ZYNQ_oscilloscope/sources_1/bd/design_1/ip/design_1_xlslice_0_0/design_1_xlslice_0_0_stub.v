// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jul 30 22:12:18 2020
// Host        : LAPTOP-4QE1Q7SJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/SSTTUUDDYY/FPGA/ax7020_new/AX7020_2017.4.1/course_s2_sdk/xadc_bram/xadc_bram.srcs/sources_1/bd/design_1/ip/design_1_xlslice_0_0/design_1_xlslice_0_0_stub.v
// Design      : design_1_xlslice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2017.4" *)
module design_1_xlslice_0_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[15:0],Dout[11:0]" */;
  input [15:0]Din;
  output [11:0]Dout;
endmodule