-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Jul 30 22:12:19 2020
-- Host        : LAPTOP-4QE1Q7SJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/SSTTUUDDYY/FPGA/ax7020_new/AX7020_2017.4.1/course_s2_sdk/xadc_bram/xadc_bram.srcs/sources_1/bd/design_1/ip/design_1_xlconcat_0_0/design_1_xlconcat_0_0_sim_netlist.vhdl
-- Design      : design_1_xlconcat_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xlconcat_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xlconcat_0_0 : entity is "design_1_xlconcat_0_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xlconcat_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xlconcat_0_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4";
end design_1_xlconcat_0_0;

architecture STRUCTURE of design_1_xlconcat_0_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  \^in0\(1 downto 0) <= In0(1 downto 0);
  \^in1\(4 downto 0) <= In1(4 downto 0);
  dout(6 downto 2) <= \^in1\(4 downto 0);
  dout(1 downto 0) <= \^in0\(1 downto 0);
end STRUCTURE;
