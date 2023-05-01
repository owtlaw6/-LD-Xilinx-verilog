`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:42:31 04/17/2020
// Design Name:   paralel
// Module Name:   D:/Xilinx/labsapt9/paralel_tb.v
// Project Name:  comp2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: paralel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module paralel_tb;

	// Inputs
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire [4:0] q;

	// Instantiate the Unit Under Test (UUT)
	paralel uut (
		.d(d), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial 
		clk = 1'b0;
		always #25 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		reset = 1'b0;
		
		// 1101010010
		
      d=1'b1;
      #50 reset=1'b1;
		
      d=1'b1;
      #50 d=1'b1;
      #50 d=1'b0;
      #50 d=1'b1;
      #50 d=1'b0;
      #50 d=1'b1;
      #50 d=1'b0;
      #50 d=1'b0;
      #50 d=1'b1;
      #70 d=1'b0;

      #50 reset=1'b0;
      #50 d=1'b0;
		
	end
      
endmodule

