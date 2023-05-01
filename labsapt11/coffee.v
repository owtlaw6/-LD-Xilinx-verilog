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
    input c05,
    input c10,
    input [1:0]sel,
	 input clock,
    input reset,
    output reg es,
    output reg esl,
    output reg cap,
	 output reg [2:0]state_reg
    );

reg [2:0]state_next;

always @(posedge clock or negedge reset)
	begin
		if(reset == 0) state_reg <= 0;
		else state_reg <= state_next;
	end
		
always @(state_reg, sel, c05, c10)
	begin
		state_next = 3'b000;
		es = 0; esl = 0; 
		cap = 0;
		case (state_reg)
			3'b000: begin 
					state_next = state_reg;
					esl = 0; es = 0; cap = 0;
					if (c05 == 1) state_next = 3'b001;
					if (c10 == 1) state_next = 3'b010;
				end
			3'b001: begin 
					state_next = state_reg;
					esl = 0; es = 0; cap = 0;
					if (c05 == 1) state_next = 3'b010;
					if (c10 == 1) state_next = 3'b011;
				end
			3'b010: begin 
					state_next = state_reg;
					esl = 0; es = 0; cap = 0;
					if (c05 == 1) state_next = 3'b011;
					if (c10 == 1) state_next = 3'b100;
				end
			3'b011: begin 
					state_next = state_reg;
					esl = 0; es = 0; cap = 0;
					if (c05 == 1) state_next = 3'b100;
					if (c10 == 1) state_next = 3'b100;
				end
			3'b100:
				begin 
					state_next = state_reg;
					esl = 0; es = 0; cap = 0; 
					if (c05 == 1) state_next = 3'b100;
					if (c10 == 1) state_next = 3'b100;
					if (sel == 2'b01) state_next = 3'b101;
					if (sel == 2'b00) state_next = 3'b100;
					if (sel == 2'b10) state_next = 3'b110;
					if (sel == 2'b11) state_next = 3'b111;
				end
				//begin
					//state_next = state_reg;
					//if (c05 == 1) state_next = 3'b100;
					//if (c10 == 1) state_next = 3'b100;
					//if (sel == 2'b00) state_next = 3'b100;
					//if (sel == 2'b01) begin state_next = 3'b000; esl = 0; es = 0; cap = 1; end
					//if (sel == 2'b10) begin state_next = 3'b000; esl = 0; es = 1; cap = 0; end
					//if (sel == 2'b11) begin state_next = 3'b000; esl = 1; es = 0; cap = 0; end
				//end
			3'b101: begin 
					state_next = 3'b000;
					esl = 0; es = 0; cap = 1;
				end
			3'b110: begin 
					state_next = 3'b000;
					esl = 0; es = 1; cap = 0;
				end
			3'b111: begin 
					state_next = 3'b000;
					esl = 1; es = 0; cap = 0;
				end
		endcase
	end

endmodule
