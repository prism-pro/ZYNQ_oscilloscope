//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Jul 31 16:49:51 2020
//Host        : LAPTOP-I3DV5RCH running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (addra,
    addrb,
    dclk_in,
    doutb,
    reset_in,
    wea);
  input [8:0]addra;
  input [8:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DCLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DCLK_IN, CLK_DOMAIN design_1_dclk_in, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000" *) input dclk_in;
  output [11:0]doutb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_IN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_IN, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_in;
  input [0:0]wea;

  wire [8:0]Net;
  wire [8:0]addrb_1;
  wire [11:0]blk_mem_gen_0_doutb;
  wire dclk_in_1;
  wire reset_in_1;
  wire [0:0]wea_1;
  wire [4:0]xadc_wiz_0_channel_out;
  wire [15:0]xadc_wiz_0_do_out;
  wire xadc_wiz_0_eoc_out;
  wire [6:0]xlconcat_0_dout;
  wire [1:0]xlconstant_0_dout;
  wire [11:0]xlslice_0_Dout;

  assign Net = addra[8:0];
  assign addrb_1 = addrb[8:0];
  assign dclk_in_1 = dclk_in;
  assign doutb[11:0] = blk_mem_gen_0_doutb;
  assign reset_in_1 = reset_in;
  assign wea_1 = wea[0];
  design_1_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(Net),
        .addrb(addrb_1),
        .clka(dclk_in_1),
        .clkb(dclk_in_1),
        .dina(xlslice_0_Dout),
        .doutb(blk_mem_gen_0_doutb),
        .ena(1'b0),
        .enb(1'b0),
        .wea(wea_1));
  design_1_ila_0_0 ila_0
       (.clk(dclk_in_1),
        .probe0(xlslice_0_Dout),
        .probe1(Net[7:0]));
  design_1_xadc_wiz_0_0 xadc_wiz_0
       (.channel_out(xadc_wiz_0_channel_out),
        .daddr_in(xlconcat_0_dout),
        .dclk_in(dclk_in_1),
        .den_in(xadc_wiz_0_eoc_out),
        .di_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .do_out(xadc_wiz_0_do_out),
        .dwe_in(1'b0),
        .eoc_out(xadc_wiz_0_eoc_out),
        .reset_in(reset_in_1),
        .vn_in(1'b0),
        .vp_in(1'b0));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(xlconstant_0_dout),
        .In1(xadc_wiz_0_channel_out),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(xadc_wiz_0_do_out),
        .Dout(xlslice_0_Dout));
endmodule
