`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:57 05/04/2020 
// Design Name: 
// Module Name:    coffee_fsm 
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
`define INIT 3'b000
`define C05 3'b001
`define C10 3'b010
`define C15 3'b011
`define C20 3'b100
`define EXPRR 3'b101
`define EXPR_L 3'b110
`define CAPP 3'b111
module coffee_fsm(
 input clk, rst,
 input credit05, credit10,
 input [1:0] coffee,
 output [2:0] state_reg,
 output reg exprr, expr_l, capp);
	
	reg [2:0] state_nxt, state_reg; //starea urmatoare a registrului de stare,respectiv starea curenta
											 //segmentul secvential- memoreaza starea curenta

	always @( posedge clk or posedge rst)
	begin //daca resetul este activ (0 logic)
		if (rst)
			state_reg <= 0; //q_reg denota starea curenta
		else
			state_reg <= state_nxt;
	end
			//segmentul combinational - pregate?te starea urmatoare, care va fi încarcata
			//în registru de stare
			
	always @( state_reg, coffee, credit05, credit10) //lista de senzitivita?i con?ine toate semnalele a caror modificare
		begin 													//produce re-evaluarea codului dintre begin ... end
			state_nxt = state_reg;
			exprr = 0;
			expr_l = 0;
			capp = 0;
						//descrierea automatului

	case (state_reg)
		`INIT : begin
					state_nxt = `INIT;
					exprr = 0;
					expr_l = 0;
					capp = 0;
					if(credit05)
						state_nxt = `C05;
					if(credit10)
						state_nxt = `C10;
					end
		
		`C05 : begin
					state_nxt = `C05;
					exprr = 0;
					expr_l = 0;
					capp = 0;
					if(credit05)
						state_nxt = `C10;
					if (credit10)
						state_nxt = `C15;
				 end
				 
		`C10 : begin
					state_nxt = `C10;
					exprr = 0;
					expr_l = 0;
					capp = 0;
					if(credit05)
						state_nxt = `C15;
					if (credit10)
						state_nxt = `C20;
				 end
		
		`C15 : begin
					state_nxt = `C15;
					exprr = 0;
					expr_l = 0;
					capp = 0;
					if(credit05)
						state_nxt = `C20;
					if (credit10)
						state_nxt = `C20;
				 end
				 
		`C20 : begin
					state_nxt = `C20;
					exprr = 0;
					expr_l = 0;
					capp = 0;
					if(coffee==2'b01)
						state_nxt = `EXPRR;
					if (coffee==2'b10)
						state_nxt = `EXPR_L;
					if(coffee==2'b11)
						state_nxt = `CAPP;
				 end
				 
		`EXPRR : begin
					state_nxt = `EXPRR;
					exprr = 1;
					expr_l = 0;
					capp = 0;
					state_nxt = `INIT;
				 end
				 
		`EXPR_L : begin
					state_nxt = `EXPR_L;
					exprr = 0;
					expr_l = 1;
					capp = 0;
					state_nxt = `INIT;
				 end
				 
		`CAPP : begin
					state_nxt = `CAPP;
					exprr = 0;
					expr_l = 0;
					capp = 1;
					state_nxt = `INIT;
				 end 
		endcase
 end
endmodule