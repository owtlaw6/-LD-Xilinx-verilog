`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:36:50 05/08/2020
// Design Name:   coffee
// Module Name:   D:/Xilinx/labsapt11/cafea/coffee_tb.v
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

module coffee_tb;

	// Inputs
	reg c05;
	reg c10;
	reg [1:0] sel;
	reg clock;
	reg reset;

	// Outputs
	wire es;
	wire esl;
	wire cap;
	wire [2:0] state_reg;

	// Instantiate the Unit Under Test (UUT)
	coffee uut (
		.c05(c05), 
		.c10(c10), 
		.sel(sel), 
		.clock(clock), 
		.reset(reset), 
		.es(es), 
		.esl(esl), 
		.cap(cap),
		.state_reg(state_reg)
	);

	initial begin
		clock = 0;
		forever #25 clock=~clock;
	end
	
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		c05 = 0;
		c10 = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#50;
		reset=1;
		#50
		c05=1;
		#200
		sel=2'b01;
		#100
		reset=0;
		c05=0;
		#25
		reset=1;
		#25
		c10=1;
		#100
		sel=2'b10;
		#100
		reset=0;
		c10=0;
		#25
		reset=1;
		#25
		c10=1;
		#100
		sel=2'b11;
	end
      
endmodule

