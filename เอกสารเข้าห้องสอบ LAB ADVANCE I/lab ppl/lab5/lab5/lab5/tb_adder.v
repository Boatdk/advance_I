`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:43:46 10/18/2016
// Design Name:   adder
// Module Name:   C:/Users/comeng/Desktop/lab5/lab5/tb_adder.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_adder;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire [4:0] z;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#20 x = 4'b0101; y = 4'b0011;
		
		#30 x = 4'b1110; y = 4'b0110;

	end
      
endmodule

