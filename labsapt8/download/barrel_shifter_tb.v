`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:59 04/08/2020
// Design Name:   barrel_shifter
// Module Name:   D:/LD/Laborator7/barrel_shifter_tb.v
// Project Name:  Laborator7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrel_shifter_tb;

	reg [3:0] a;
	reg [1:0] sel;

	wire [3:0] shift_out;

	barrel_shifter uut (
		.a(a), 
		.sel(sel), 
		.shift_out(shift_out)
	);

	initial begin
		a = 0;
		sel = 0;
		///A = 1101
		#100;
      a = 4'b1101;
		sel = 2'b00;
		#20;
		a = 4'b1101;
		sel = 2'b01;
		#20;
		a = 4'b1101;
		sel = 2'b10;
		#20;
		a = 4'b1101;
		sel = 2'b11;
		#20;
		///A = 0110
		a = 4'b0110;
		sel = 2'b00;
		#20;
		a = 4'b0110;
		sel = 2'b01;
		#20;
		a = 4'b0110;
		sel = 2'b10;
		#20;
		a = 4'b0110;
		sel = 2'b11;
		#20;
	end
      
endmodule
