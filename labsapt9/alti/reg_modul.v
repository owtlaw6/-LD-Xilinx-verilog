`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:53:26 04/15/2020 
// Design Name: 
// Module Name:    reg_modul 
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
module reg_modul(
			input d,
			input clk,
			input rst,
			output [2:0]q
    );
 reg [2:0]temp;
			always @(posedge clk, posedge rst)
			begin
			if (rst==1'b1)
				temp<=3'b000;
			else
				begin
					temp<=temp<<1'b1;
					temp[0]<=d;
				end
			end
			
			assign q=temp;

endmodule
