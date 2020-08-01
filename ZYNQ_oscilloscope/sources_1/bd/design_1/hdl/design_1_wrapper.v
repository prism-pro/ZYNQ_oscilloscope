//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Jul 31 16:49:51 2020
//Host        : LAPTOP-I3DV5RCH running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (addra,
    addrb,
    dclk_in,
    doutb,
    reset_in,
    wea);
  input [8:0]addra;
  input [8:0]addrb;
  input dclk_in;
  output [11:0]doutb;
  input reset_in;
  input [0:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire dclk_in;
  wire [11:0]doutb;
  wire reset_in;
  wire [0:0]wea;

  design_1 design_1_i
       (.addra(addra),
        .addrb(addrb),
        .dclk_in(dclk_in),
        .doutb(doutb),
        .reset_in(reset_in),
        .wea(wea));
endmodule
