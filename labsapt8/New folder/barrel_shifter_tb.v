`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:41:43 04/09/2020
// Design Name:   barrel_shifter
// Module Name:   D:/Xilinx/lab6/shifter/barrel_shifter_tb.v
// Project Name:  shifter
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

	// Inputs
	reg [3:0] a;
	reg [1:0] sel;

	// Outputs
	wire [3:0] shift_out;

	// Instantiate the Unit Under Test (UUT)
	barrel_shifter uut (
		.a(a), 
		.sel(sel), 
		.shift_out(shift_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 4'b1110; sel = 2'b00;
		
		#20; a = 4'b1110; sel = 2'b01;
		#20; a = 4'b1110; sel = 2'b10;
		#20; a = 4'b1110; sel = 2'b11;
		
		#20; a = 4'b0111; sel = 2'b00;
		#20; a = 4'b0111; sel = 2'b01;
		#20; a = 4'b0111; sel = 2'b10;
		#20; a = 4'b0111;	sel = 2'b11;
		
		#20;

	end
      
endmodule

