`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 20:16:28
// Design Name: 
// Module Name: top
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


module top(
			input clk,		          	//50MHz时钟
			input rst_n	,             	//复位信号，低电平有效	
			output hdmi_oen,
            output TMDS_clk_n,
            output TMDS_clk_p,
            output [2:0]TMDS_data_n,
            output [2:0]TMDS_data_p
		);

//-----------------------------------------------------------
reg		[8:0]  		w_addr;	   		//RAM PORTA写地址
reg		[11:0] 		w_data;	   		//RAM PORTA写数据
reg 	      		wea;	    	//RAM PORTA使能
reg		[8:0]  		r_addr;	  	 	//RAM PORTB读地址
wire	[11:0] 		r_data;			//RAM PORTB读数据
reg                 rclk=0;
reg     [10:0]      cnt=11'b0;
//产生RAM PORTB读地址


always@(posedge clk)
    begin
        if(!rst_n)
            cnt<=11'b0;
        else if(cnt<=11'd640)
            cnt<=cnt+11'b1;
        else
            begin
                cnt<=11'b0;
                rclk<=~rclk;
            end
            
    end
//产生RAM PORTA写使能信号
always@(posedge clk or negedge rst_n)
begin	
  if(!rst_n) 
  	  wea <= 1'b0;
  else 
  begin
     if(&w_addr) 			//w_addr的bit位全为1，共写入512个数据，写入完成
        wea <= 1'b0;                 
     else               
        wea	<= 1'b1;        //ram写使能
  end 
end 

                                 //读时钟

always @(posedge rclk or negedge rst_n)      //产生读地址
begin
  if(!rst_n) 
	r_addr <= 9'd0;                         //地址宽度要改
  else if (|w_addr)			                //w_addr位或，不等于0
    r_addr <= r_addr+1'b1;
  else
	r_addr <= 9'd0;	
end

//产生RAM PORTA写入的地址及数据
always@(posedge clk or negedge rst_n)
begin	
  if(!rst_n) 
  begin
	  w_addr <= 9'd0;
	//  w_data <= 12'd1;
  end
  else 
  begin
     if(wea) 					//ram写使能有效
	 begin        
		if (&w_addr)			//w_addr的bit位全为1，共写入512个数据，写入完成
		begin
			w_addr <= 9'b1 ;	//将地址和数据的值保持住，只写一次RAM
			//w_data <= w_data ;
		end
		else
		begin
			w_addr <= w_addr + 1'b1;
			//w_data <= w_data + 1'b1;
		end
	 end
  end 
end 

//-----------------------------------------------------------
//实例化RAM	

 design_1 design_1(
    .dclk_in (clk),
    .reset_in(!rst_n),
   //.addra(w_addr),
    .wea(wea),   		//RAM PORTA写地址
     .addra     (w_addr       ),     // input [8 : 0] addra
     // .dina      (w_data       ),     // input [15 : 0] dina
      .addrb     (r_addr       ),     // input [8 : 0] addrb
      .doutb     (r_data       )      // output [15 : 0] doutbr_data
);
top_1 t1(
    clk,                  
    rst_n,
    r_data,
    hdmi_oen,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p
);	
endmodule

