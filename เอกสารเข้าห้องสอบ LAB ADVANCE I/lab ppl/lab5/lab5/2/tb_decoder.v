`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:31:19 10/18/2016
// Design Name:   decoder
// Module Name:   C:/Users/comeng/Desktop/lab5/decoder/tb_decoder.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_decoder;

	// Inputs
	reg [2:0] i;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.i(i), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

