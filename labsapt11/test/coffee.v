`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:39 05/08/2020 
// Design Name: 
// Module Name:    coffee 
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
module coffee(
    input on,
    input gen,
	 input clock,
    input reset,
    output reg led,
	 output reg [1:0]state_reg
    );

reg [1:0]state_next;

always @(posedge clock or negedge reset)
	begin
		if(reset == 0) state_reg <= 0;
		else state_reg <= state_next;
	end
		
always @(state_reg, on, gen)
	begin
		state_next = 2'b00;
		led = 0;
		case (state_reg)
			2'b00: begin 
					state_next = state_reg;
					led = 0;
					if (on == 1) state_next = 2'b01;
					if (on == 0) state_next = 2'b00;
				end
			2'b01: begin 
					state_next = state_reg;
					led = 0;
					if (on == 0) state_next = 2'b00;
					if (gen == 0 && on == 1) state_next = 2'b01;
					if (gen == 1 && on == 1) state_next = 2'b10;
				end
			2'b10: begin 
					state_next = state_reg;
					led = 1;
					if (on == 0) state_next = 2'b00;
					if (gen == 0 && on == 1) state_next = 2'b01;
					if (gen == 1 && on == 1) state_next = 2'b10;
				end
		endcase
	end

endmodule
