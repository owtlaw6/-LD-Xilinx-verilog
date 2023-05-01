`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:23:35 03/20/2020
// Design Name:   comp2biti
// Module Name:   D:/Xilinx/lab5/comp2/comp2bitstb.v
// Project Name:  comp2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comp2biti
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comp2bitstb;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire sm;
	wire gr;

	// Instantiate the Unit Under Test (UUT)
	comp2biti uut (
		.a(a), 
		.b(b), 
		.sm(sm), 
		.gr(gr)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always 
	begin
		#20 a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0;
		#20 a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1;
		#20 a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0;
		#20 a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1;
		
		#20 a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 0;
		#20 a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1;
		#20 a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 0;
		#20 a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 1;
		
		#20 a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0;
		#20 a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1;
		#20 a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 0;
		#20 a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 1;
		
		#20 a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 0;
		#20 a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 1;
		#20 a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 0;
		#20 a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 1;
	end
      
endmodule

