`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:47 05/01/2020 
// Design Name: 
// Module Name:    ecounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ecounter(
    input clk,
    input reset,
    output [3:0]cnt
    );

	reg [3:0]q;
	always @(posedge clk)
    begin
    if(reset | q == 4'b1110)
			q <= 4'b0000;
    else if (q == 4'b0000)
         q <= 4'b0001;
    else if (q == 4'b0001)
         q <= q + 4'b0001;
    else
         q <= q + 4'b0010;
    end
    assign cnt = q;

endmodule
