`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:48 10/25/2016 
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
	 parameter dclk1 = (25000000/440/2);
	 parameter dclk2 = (25000000/440/4);
	 reg speed;
	 reg sp1;
	 reg sp2;
	 reg[31:0] cnt1;
	 reg[31:0] cnt2;
	 reg[31:0] cnt;
	 
	 always@(onoff)
		if (onoff ==0) sp <= 0;
		else sp <= (speed ? sp1:sp2);
	 
	 
	 always@(posedge clk)
			if (cnt1 == dclk1) begin sp1 <= ~sp1; cnt1 <= 0; end
			else begin cnt1 <= cnt1 + 1; end 
		
	 always@(posedge clk)
			if (cnt2 == dclk2) begin sp2 <= ~sp2; cnt2 <= 0; end
			else begin cnt2 <= cnt2 + 1; end 
	 
	 always@(posedge clk)
			if (cnt == 25000000) begin speed = ~speed; cnt <= 0; end
			else cnt <= cnt + 1;


endmodule

