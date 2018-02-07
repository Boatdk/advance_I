`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:32 10/18/2016 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input [2:0] i,
    output [7:0] o
    );
/****************************************/	 
	 reg [7:0] so;
	 assign o = so;
	 always @*
			case (i)
				3'b000 : so <= 8'b00000001;
				3'b001 : so <= 8'b00000010;
				3'b010 : so <= 8'b00000100;
				3'b011 : so <= 8'b00001000;
				3'b100 : so <= 8'b00010000;
				3'b101 : so <= 8'b00100000;
				3'b110 : so <= 8'b01000000;
				3'b111 : so <= 8'b10000000;
				default: so <= 8'b00000000;
			endcase
/***************************************/

endmodule
