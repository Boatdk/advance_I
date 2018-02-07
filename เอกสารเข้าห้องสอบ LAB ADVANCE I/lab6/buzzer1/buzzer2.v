`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:46:00 10/25/2016 
// Design Name: 
// Module Name:    buzzer2 
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
module buzzer2(
    input clk,
    input onoff,
    output reg sp
    );
	 parameter clk56k = 25000000/440;
	 reg[31:0] cnt;
	 always@(posedge clk)
		if(onoff == 0) sp <= 0;
		else begin
			if (cnt == clk56k) begin sp <= ~sp; cnt <= 0; end
			else begin cnt <= cnt + 1; end 
		end
		


endmodule
