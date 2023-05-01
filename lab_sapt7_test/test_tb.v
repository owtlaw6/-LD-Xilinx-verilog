`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:19:23 04/03/2020
// Design Name:   test
// Module Name:   D:/Xilinx//test_tb.v
// Project Name:  comp2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
	always 
	begin
		#20 a = 0; b = 0; c = 0; d = 0;
		#20 a = 0; b = 0; c = 0; d = 1;
		#20 a = 0; b = 0; c = 1; d = 0;
		#20 a = 0; b = 0; c = 1; d = 1;
		
		#20 a = 0; b = 1; c = 0; d = 0;
		#20 a = 0; b = 1; c = 0; d = 1;
		#20 a = 0; b = 1; c = 1; d = 0;
		#20 a = 0; b = 1; c = 1; d = 1;
		
		#20 a = 1; b = 0; c = 0; d = 0;
		#20 a = 1; b = 0; c = 0; d = 1;
		#20 a = 1; b = 0; c = 1; d = 0;
		#20 a = 1; b = 0; c = 1; d = 1;
		
		#20 a = 1; b = 1; c = 0; d = 0;
		#20 a = 1; b = 1; c = 0; d = 1;
		#20 a = 1; b = 1; c = 1; d = 0;
		#20 a = 1; b = 1; c = 1; d = 1;
	end
endmodule

