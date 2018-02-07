`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:41 10/18/2016 
// Design Name: 
// Module Name:    counter 
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
module ttt(
    input clk,
    output [3:0] o
    );

   reg [3:0] cnt = 4'b0000;
	reg [31:0] cnt_div;
	reg sclk;
	
	assign o = cnt;
   
   always @(posedge sclk)
      cnt <= cnt + 1;
	
	always @(posedge clk)
		begin
			if (cnt_div == 25000000)
				begin sclk <= 1; cnt_div <= 0; end
				else begin sclk <= 0; cnt_div <= cnt_div +1; end
		end
						

endmodule
