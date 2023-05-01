`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:50 04/10/2020 
// Design Name: 
// Module Name:    barrel_shifter 
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
module barrel_shifter(
    input [3:0] a,
    input [1:0] sel,
    output [3:0]shift_out
    );
	 
	wire [3:0] mux_li, mux_l0_l, mux_ll_l;
	assign mux_l0_l = {1'b0, a[3], a[2], a[1]};
	assign mux_ll_l = {1'b0, 1'b0, mux_li [3], mux_li [2]};
	
	genvar i;
	generate
		for (i=0; i<4; i=i+1)
			begin: mux_level_i
			//1
			mux2_1 mux_instance0 (.a(mux_l0_l[i]), .b(a[i]), .sel(sel[0]), .o(mux_li[i]));
			//2
			mux2_1 mux_instance1 (.a(mux_ll_l[i]), .b(mux_li[i]), .sel(sel[1]), .o(shift_out[i]));
			end
	endgenerate

endmodule
