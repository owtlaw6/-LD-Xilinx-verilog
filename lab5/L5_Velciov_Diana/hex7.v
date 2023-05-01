`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:50 03/27/2020 
// Design Name: 
// Module Name:    hex7 
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
module hex7(
    input [3:0] c,
    output reg [6:0] hex
    );
	 
always
	@c
	begin
		hex = 7'b1111111;
		case( c)
		4'b0000: hex = 7'b0111111;
		4'b0001: hex = 7'b0000110;
		4'b0010: hex = 7'b1011011;
		4'b0011: hex = 7'b1001111;
		4'b0100: hex = 7'b1100110;
		4'b0101: hex = 7'b1101101;
		4'b0110: hex = 7'b1111101;
		4'b0111: hex = 7'b0000111;
		4'b1000: hex = 7'b1111111;
		4'b1001: hex = 7'b1101111;
		4'b1010: hex = 7'b1110111;
		4'b1011: hex = 7'b1111100;
		4'b1100: hex = 7'b0111001;
		4'b1101: hex = 7'b1011110;
		4'b1110: hex = 7'b1111001;
		4'b1111: hex = 7'b1110001;
		endcase
	end

endmodule
