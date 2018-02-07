`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:01 11/24/2017 
// Design Name: 
// Module Name:    musicpad 
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
module musicpad(
    input clk,
    input [2:0] column,
    output reg [3:0] row,
    output reg sp
    );
	 
	 	 
	 parameter s1 = 2'b00;
	 parameter s2 = 2'b01;
	 parameter s3 = 2'b10;
	 parameter s4 = 2'b11;
	 
	parameter doo = (25000000/262/2);
	parameter re = (25000000/294/2);				
	parameter mi = (25000000/330/2);
	parameter fa = (25000000/349/2);
	parameter sol = (25000000/392/2);
	parameter la = (25000000/440/2);
	parameter si = (25000000/494/2);
	parameter doo2 = (25000000/523/2);
	 
	reg s_do,s_re,s_mi,s_fa,s_sol,s_la,s_si,s_do2;
	reg [3:0] tmp;
	reg [31:0] cnt,cnt1,cnt2,cnt3,cnt4,cnt5,cnt6,cnt7,cnt8;
	 
	 reg [1:0] state = s1;
	 
	 reg sclk;

	always@(posedge sclk)
		case(state)
		s1 : begin
			row <= 4'b1101; 
			case(column)
				3'b110 : tmp <= 1;
				3'b101 : tmp <= 2;
				3'b011 : tmp <= 3;
			endcase
			state <= s2;
		end
		s2 : begin
			row <= 4'b1011; 
		case(column)
				3'b110 : tmp <= 4;
				3'b101 : tmp <= 5;
				3'b011 : tmp <= 6;
			endcase
			state <= s3;
		end
		s3 : begin
			row <= 4'b0111; 
			case(column)
				3'b110 : tmp <= 7;
				3'b101 : tmp <= 8;
				3'b011 : tmp <= 0;
			endcase
			state <= s4;
		end
		s4 : begin
			row <= 4'b1110; //row
			case(column)
				3'b110 : tmp <= 0;
				3'b101 : tmp <= 0;
				3'b011 : tmp <= 0;
			endcase
			state <= s1;
		end
	endcase
	
	always@(posedge clk) begin
		case (tmp)
			1 : sp <= s_do;
			2 : sp <= s_re;
			3 : sp <= s_mi;
			4 : sp <= s_fa;
			5 : sp <= s_sol;
			6 : sp <= s_la;
			7 : sp <= s_si;
			8 : sp <= s_do2;
			default : sp <= 0;
		endcase
	end
	
	always@(posedge clk)
		begin
			if(cnt == 50000)
				begin sclk <= 1; cnt <= 0; end
				else begin sclk <= 0; cnt <= cnt + 1; end
				end
				
	always @(posedge clk)							
	begin
		if (cnt1 == 0) begin cnt1 <= doo - 1 ; s_do <= ~s_do; end
		else cnt1 <= cnt1 - 1;   
	end
	
	always @(posedge clk)
	begin
		if (cnt2 == 0) begin cnt2 <= re - 1; s_re <= ~s_re; end
		else cnt2 <= cnt2 - 1; 
	end
	
	always @(posedge clk)
	begin
		if (cnt3 == 0) begin cnt3 <= mi - 1; s_mi <= ~s_mi; end
		else cnt3 <= cnt3 - 1; 
	end

	always @(posedge clk)
	begin
		if (cnt4 == 0) begin cnt4 <= fa - 1; s_fa <= ~s_fa; end 
		else cnt4 <= cnt4 - 1; 
	end
		
	always @(posedge clk)
	begin
		if (cnt5 == 0) begin cnt5 <= sol - 1;  s_sol <= ~s_sol; end
		else cnt5 <= cnt5 - 1; 
	end
		
	always @(posedge clk)
	begin
		if (cnt6 == 0) begin cnt6 <= la - 1; s_la <= ~s_la; end
		else cnt6 <= cnt6 - 1; 
	end
		
	always @(posedge clk)
	begin
		if (cnt7 == 0) begin cnt7 <= si - 1; s_si <= ~s_si; end
		else cnt7 <= cnt7 - 1; 
	end
	
	always @(posedge clk)
	begin
		if (cnt8 == 0) begin cnt8 <= doo2 - 1; s_do2 <= ~s_do2; end
		else cnt8 <= cnt8 - 1; 
	end



endmodule
