`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:28 11/27/2017 
// Design Name: 
// Module Name:    adderpraw 
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
module adderpraw(
    input [3:0] x,
    input [3:0] y,
    output [4:0] z
    );

assign z = x + y;

endmodule
