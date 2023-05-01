`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:16 03/20/2020 
// Design Name: 
// Module Name:    comp2biti 
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
module comp2biti(
    input [1:0] a,
    input [1:0] b,
    output sm,
    output gr
    );

/// assign sm = (~a[0] & ~a[1]) | (~a[0]& b[1]) | (b[1] & b[0]) | (b[1] & ~a[1]) | (~a[1] & b[0]) ;
/// assign gr = (a[1] & a[0]) | (a[1] & ~b[1]) | (a[1] & ~b[0]) | (a[0] & ~b[1]) | (~b[1] & ~b[0]) ;

assign gr = (a[1] & ~b[1]) | (a[0] & ~b[1]) | (a[1] & ~b[0]) | (~b[0] & ~b[1]) | (a[1] & a[0]);
assign sm = (~a[1] & ~a[0]) | (~a[1] & b[0]) | (~a[1] & b[1]) | (~a[0] & b[1]) | (b[1] & b[0]);

endmodule
