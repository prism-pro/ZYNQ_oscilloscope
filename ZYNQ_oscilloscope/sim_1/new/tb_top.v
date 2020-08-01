`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 22:01:04
// Design Name: 
// Module Name: tb_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_top;
// Inputs
reg clk;
reg rst_n;


// Instantiate the Unit Under Test (UUT)
top uut (
	.clk	(clk), 		
	.rst_n	(rst_n)
);

initial 
begin
	// Initialize Inputs
	clk = 0;
	rst_n = 0;

	// Wait 100 ns for global reset to finish
	#100;
      rst_n = 1;       

 end

always #10 clk = ~ clk;   //20ns一个周期，产生50MHz时钟源
   
endmodule

