`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:11 10/25/2016 
// Design Name: 
// Module Name:    buzzer 
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
module buzzer(
    input clk,
    input onoff,
    output sp
    );

	assign sp = ( onoff ? 1:0);
endmodule
