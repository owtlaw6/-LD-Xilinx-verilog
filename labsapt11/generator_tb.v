`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:33:56 05/15/2020
// Design Name:   coffee
// Module Name:   D:/Xilinx/labsapt11/cafea/generator_tb.v
// Project Name:  cafea
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: coffee
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module generator_tb;

	// Inputs
	reg on;
	reg gen;
	reg clock;
	reg reset;

	// Outputs
	wire led;
	wire [1:0] state_reg;

	// Instantiate the Unit Under Test (UUT)
	coffee uut (
		.on(on), 
		.gen(gen), 
		.clock(clock), 
		.reset(reset), 
		.led(led), 
		.state_reg(state_reg)
	);
	initial begin
		clock = 0;
		forever #25 clock=~clock;
	end
	initial begin
		// Initialize Inputs
		on = 0;
		gen = 0;
		clock = 0;
		reset = 0;

		#50;
		reset=1;
		#100
		on = 1;
		#25
		gen = 0;
		#25
		gen = 1;
		#25
		on = 0;
		
	end
      
endmodule

