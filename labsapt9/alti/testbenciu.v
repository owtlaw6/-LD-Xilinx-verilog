`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:59:53 04/15/2020
// Design Name:   reg_modul
// Module Name:   D:/FACULTATE/semestrul 2/LD/lab 8/reg_4_serial_paralel/testbenciu.v
// Project Name:  reg_4_serial_paralel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_modul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbenciu;

	reg d;
	reg clk;
	reg rst;

	wire [2:0] q;

	reg_modul uut (
		.d(d), 
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);
		
	initial begin
		clk=1'b0;
		forever #10 clk = ~clk;
	end
	
	initial begin
		rst=1'b1;
		d=1'b1;
		#100 rst=1'b0;
		#20 d=1'b1;
		#20 d=1'b0;
		#20 d=1'b1;
		#20 d=1'b0;
		#20 d=1'b1;
		#20 d=1'b0;
		#20 d=1'b0;
		#20 d=1'b1;
		#20 d=1'b0;
	end
      
endmodule

