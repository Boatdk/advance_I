`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:18:32 11/08/2016 
// Design Name: 
// Module Name:    music 
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
module music(
		input clk,					//io
		input onoff,
		input [6:0] note,
		output speaker
	);
	
	parameter doo = (25000000/262/2);
	parameter re = (25000000/294/2);				//config frequncey
	parameter mi = (25000000/330/2);
	parameter fa = (25000000/349/2);
	parameter sol = (25000000/392/2);
	parameter la = (25000000/440/2);
	parameter si = (25000000/494/2);
	
	reg s_do,s_re,s_mi,s_fa,s_sol,s_la,s_si;
	reg [31:0] cnt,cnt1,cnt2,cnt3,cnt4,cnt5,cnt6,cnt7;		//config variable
	reg sp;
	assign speaker = sp; 
	
	reg [5:0] state = 0;
	always@(state)							//case -> in play note
	begin
		if(onoff == 0) sp <= 0;
		else
		case(state)
		0 : sp <= 0;
		1 : sp <= s_sol;
		2 : sp <= s_sol;
		3 : sp <= s_sol;
		4 : sp <= s_sol;
		5 : sp <= s_mi;
		6 : sp <= s_re;
		7 : sp <= s_mi;
		8 : sp <= s_sol;
		9 : sp <= s_do;
		10 : sp <= s_sol;
		11 : sp <= s_mi;
		12 : sp <= s_re;
		13 : sp <= s_mi;
		14 : sp <= s_do;
		15 : sp <= s_re;
		16 : sp <= s_do;
		17 : sp <= s_la;
		18 : sp <= s_do;
		19 : sp <= s_do;
		20 : sp <= s_la;
		21 : sp <= s_sol;
		22 : sp <= s_do;
		23 : sp <= s_do;
		24 : sp <= s_la;
		25 : sp <= s_do;
		26 : sp <= s_do;
		27 : sp <= s_do;
		28 : sp <= s_la;
		29 : sp <= s_sol;
		30 : sp <= s_do;
		31 : sp <= s_sol;
		32 : sp <= s_la;
		33 : sp <= s_sol;
		34 : sp <= s_mi;
		35 : sp <= s_re;
		36 : sp <= s_do;
		
		endcase
	end
	
	always @(posedge clk)							//config clock in each note
	begin
		if (cnt1 == 0) cnt1 <= doo - 1;
			else cnt1 <= cnt1 - 1;   end
	always @(posedge clk)
		if(cnt1 == 0) s_do <= ~s_do;
	
	always @(posedge clk)
	begin
		if (cnt2 == 0) cnt2 <= re - 1;
			else cnt2 <= cnt2 - 1; end
	always @(posedge clk)
		if(cnt2 == 0) s_re <= ~s_re;
	
	always @(posedge clk)
	begin
		if (cnt3 == 0) cnt3 <= mi - 1;
			else cnt3 <= cnt3 - 1; end
	always @(posedge clk)
		if(cnt3 == 0) s_mi <= ~s_mi;

	always @(posedge clk)
	begin
		if (cnt4 == 0) cnt4 <= fa - 1;
			else cnt4 <= cnt4 - 1; end
	always @(posedge clk)
		if(cnt4 == 0) s_fa <= ~s_fa;
		
	always @(posedge clk)
	begin
		if (cnt5 == 0) cnt5 <= sol - 1;
			else cnt5 <= cnt5 - 1; end
	always @(posedge clk)
		if(cnt5 == 0) s_sol <= ~s_sol;
		
	always @(posedge clk)
	begin
		if (cnt6 == 0) cnt6 <= la - 1;
			else cnt6 <= cnt6 - 1; end
	always @(posedge clk)
		if(cnt6 == 0) s_la <= ~s_la;
		
	always @(posedge clk)
	begin
		if (cnt7 == 0) cnt7 <= si - 1;
			else cnt7 <= cnt7 - 1; end
	always @(posedge clk)
		if(cnt7 == 0) s_si <= ~s_si;
	
	
	always@(posedge clk)																//config change state														
	if(onoff == 0||state == 37) state <= 0 ;else        
	begin
		if(cnt == 10000000 ) begin state <= state + 1 ; cnt <=0 ; end   
		else cnt <= cnt + 1; end
				
endmodule
