`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:49 03/27/2020
// Design Name:   hex7
// Module Name:   D:/Xilinx/lab5/comp2/hex7_display_tb.v
// Project Name:  comp2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hex7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

	module hex7_display_tb;

	// Inputs
	reg [3:0] c;

	// Outputs
	wire [6:0] hex;

	// Instantiate the Unit Under Test (UUT)
	hex7 uut (
		.c(c), 
		.hex(hex)
	);

	initial begin
		// Initialize Inputs
		c = 0; 

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always //toggle inputs for two bit comparator
		begin
		//adauga?i combina?iile de numere
		
		#25 c = 4'b0000;
		#25 c = 4'b0001;
		#25 c = 4'b0010;
		#25 c = 4'b0011;
		#25 c = 4'b0100;
		#25 c = 4'b0101;
		#25 c = 4'b0110;
		#25 c = 4'b0111;
		#25 c = 4'b1000;
		#25 c = 4'b1001;
		#25 c = 4'b1010;
		#25 c = 4'b1011;
		#25 c = 4'b1100;
		#25 c = 4'b1101;
		#25 c = 4'b1110; 
		#25 c = 4'b1111;
		
	end
      
endmodule

