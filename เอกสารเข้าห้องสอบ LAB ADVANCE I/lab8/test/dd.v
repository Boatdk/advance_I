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
module dd(
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
		case(note)
			7'b0000001 : sp <= s_do; 
			7'b0000010 : sp <= s_re;
			7'b0000100 : sp <= s_mi;
			7'b0001000 : sp <= s_fa;
			7'b0010000 : sp <= s_sol;
			7'b0100000 : sp <= s_la;
			7'b1000000 : sp <= s_si;
			

		endcase
	end
	
	always @(posedge clk)							//config clock in each note
	begin
		if (cnt1 == 0) begin cnt1 <= doo - 1 ; s_do <= ~s_do; end
			else cnt1 <= cnt1 - 1;   end
	
	
	always @(posedge clk)
	begin
		if (cnt2 == 0) cnt2 <= re - 1;
			else cnt2 <= cnt2 - 1; end
	always @(posedge clk)
		if(cnt2 == 0) s_re <= ~s_re;
	
	always @(posedge clk)
	begin
		if (cnt3 == 0) begin cnt3 <= mi - 1; s_mi <= ~s_mi; end
			else cnt3 <= cnt3 - 1; end
	

	always @(posedge clk)
	begin
		if (cnt4 == 0) begin cnt4 <= fa - 1; s_fa <= ~s_fa; end 
			else cnt4 <= cnt4 - 1; end
	
		
	always @(posedge clk)
	begin
		if (cnt5 == 0) begin cnt5 <= sol - 1;  s_sol <= ~s_sol; end
			else cnt5 <= cnt5 - 1; end

		
	always @(posedge clk)
	begin
		if (cnt6 == 0) begin cnt6 <= la - 1; s_la <= ~s_la; end
			else cnt6 <= cnt6 - 1; end
	
		
	always @(posedge clk)
	begin
		if (cnt7 == 0) begin cnt7 <= si - 1; s_si <= ~s_si; end
			else cnt7 <= cnt7 - 1; end
	
	
	
	always@(posedge clk)																//config change state														
	if(onoff == 0||state == 37) state <= 0 ;else        
	begin
		if(cnt == 10000000 ) begin state <= state + 1 ; cnt <=0 ; end   
		else cnt <= cnt + 1; end
				
endmodule
