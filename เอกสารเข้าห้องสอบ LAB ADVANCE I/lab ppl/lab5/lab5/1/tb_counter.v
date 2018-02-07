`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:25:12 10/18/2016
// Design Name:   counter
// Module Name:   C:/Users/comeng/Desktop/lab5/counter/tb_counter.v
// Project Name:  counter
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

module tb_counter;

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

