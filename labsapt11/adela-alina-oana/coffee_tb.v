`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:54:41 05/04/2020
// Design Name:   coffee_fsm
// Module Name:   C:/Users/Adela/Desktop/LD/tema10/coffee_fsm/coffee_tb.v
// Project Name:  coffee_fsm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: coffee_fsm
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
	reg clk;
	reg rst;
	reg credit05;
	reg credit10;
	reg [1:0] coffee;

	// Outputs
	wire [2:0] state_reg;
	wire exprr;
	wire expr_l;
	wire capp;

	// Instantiate the Unit Under Test (UUT)
	coffee_fsm uut (
		.clk(clk), 
		.rst(rst), 
		.credit05(credit05), 
		.credit10(credit10), 
		.coffee(coffee), 
		.state_reg(state_reg), 
		.exprr(exprr), 
		.expr_l(expr_l), 
		.capp(capp)
	);
	initial begin
		clk = 0;
		forever #25 clk=~clk;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		credit05 = 0;
		credit10 = 0;
		coffee = 0;


		// Wait 100 ns for global reset to finish
		#50;
		rst=0;
		#50
		
		credit05=1;
		#200
		
		coffee=2'b01;
		#100
		
		rst=1;
		credit05=0;
		#25
		rst=0;
		#25
		
		credit10=1;
		#100
		
		coffee=2'b10;
		#100
		
		rst=1;
		credit10=0;
		#25
		rst=0;
		#25
		
		credit10=1;
		#100
		
		coffee=2'b11;
		
		
		

	end
      
endmodule
