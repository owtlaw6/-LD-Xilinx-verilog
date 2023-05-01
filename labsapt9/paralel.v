`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:28 04/17/2020 
// Design Name: 
// Module Name:    paralel 
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
module paralel(
    input d,
    input clk,
    input reset,
    output [4:0] q
    );
reg [4:0] qnext;

always @(posedge clk or negedge reset)
    begin
        if(reset == 1'b0)
            qnext <= 5'b00000;
        else
            begin
                    qnext[0] <= qnext[1];
                    qnext[1] <= qnext[2];
						  qnext[2] <= qnext[3];
						  qnext[3] <= qnext[4];
                    qnext[4] <= d;
            end
    end
assign q = qnext;

endmodule
