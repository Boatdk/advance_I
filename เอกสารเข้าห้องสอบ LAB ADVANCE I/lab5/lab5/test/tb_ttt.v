`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:45:29 11/25/2016
// Design Name:   counter
// Module Name:   J:/lab5/lab5/test/tb_ttt.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ttt;

	// Inputs
	reg clk;

	// Outputs
	wire [2:0] o;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #20 clk = ~clk;
	end
      
endmodule

