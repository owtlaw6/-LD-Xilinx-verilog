`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:44:47 05/01/2020
// Design Name:   ecounter
// Module Name:   D:/Xilinx/lab5/comp2/ecounter_tb.v
// Project Name:  comp2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ecounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ecounter_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	ecounter uut (
		.clk(clk), 
		.reset(reset), 
		.cnt(cnt)
	);

	initial begin
		clk = 0;
		forever #25 clk=~clk;
    end
    initial begin
        reset=1;
        #100;
        reset=0;
  	 end
      
endmodule

