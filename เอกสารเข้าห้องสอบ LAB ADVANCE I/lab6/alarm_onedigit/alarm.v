`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:12 10/25/2016 
// Design Name: 
// Module Name:    alarm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alarm(
	input clk,
	input en,
	output reg sp,
	output reg [6:0] o,
	output com
    );
	 assign com =0;
	 reg [3:0] one;
	 reg [3:0] ten;
	 reg sclk;
	 reg [31:0] cnt;
	 always@(posedge sclk)
	 if (en ==0 ) one <=0; else
	 begin
	 if (one == 9) begin one <=0; ten <= +1; end else begin one <= one +1; end
	 end
	 always@(one)
	 if (en == 0)  sp <=0;  else begin if (one ==9)  sp <= 1; end  
	 always@(posedge clk)
	 begin if (cnt == 10000000)  begin sclk <= ~sclk;  cnt <=0;  end  else  cnt <= cnt +1; end
	 always@( one)
	 begin 
	 case (one )
			4'b0000  :  o <= 7'b0111111;
			4'b0001  :  o <= 7'b0000110;
			4'b0010  :  o <= 7'b1011011;
			4'b0011  :  o <= 7'b1001111;
			4'b0100  :  o <= 7'b1100110;
			4'b0101  :  o <= 7'b1101101;
			4'b0110  :  o <= 7'b1111101;
			4'b0111  :  o <= 7'b0000111;
			4'b1000  :  o <= 7'b1111111;
			4'b1001  :  o <= 7'b1100111;
			default  :  o <= 7'b0000000;
	endcase
	end

endmodule

