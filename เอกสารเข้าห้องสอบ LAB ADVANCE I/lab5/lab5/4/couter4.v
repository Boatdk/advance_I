`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:51 10/18/2016 
// Design Name: 
// Module Name:    couter4 
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
module couter4(
    input clk,
    output com,
    input mode,
    output [6:0] segment
    );

/***************************/
	reg [3:0] cnt = 4'b0000;
	reg [31:0] cnt_div;
	reg sclk;
	reg [6:0] so;
	assign segment = so;
   assign com = 0;
/****************************/
   always @(posedge sclk)
      if (mode == 0) cnt <= cnt + 1; else cnt <= cnt - 1;
/******************************/		
	always @(posedge clk)
		begin
			if (cnt_div == 25000000)
				begin sclk <= 1; cnt_div <= 0; end
				else begin sclk <= 0; cnt_div <= cnt_div +1; end
		end
/*****************************/	
 always @*
			case (cnt)
				4'b0000 : so <= 7'b0111111;
				4'b0001 : so <= 7'b0000110;
				4'b0010 : so <= 7'b1011011;
				4'b0011 : so <= 7'b1001111;
				4'b0100 : so <= 7'b1100110;
				4'b0101 : so <= 7'b1101101;
				4'b0110 : so <= 7'b1111101;
				4'b0111 : so <= 7'b0000111;
				4'b1000 : so <= 7'b1111111;
				4'b1001 : so <= 7'b1101111;
				4'b1010 : so <= 7'b1110111;
				4'b1011 : so <= 7'b1111100;
				4'b1100 : so <= 7'b0111001;
				4'b1101 : so <= 7'b1011110;
				4'b1110 : so <= 7'b1111001;
				4'b1111 : so <= 7'b1110001;	
			endcase

endmodule
