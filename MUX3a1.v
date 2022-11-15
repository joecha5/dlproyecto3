`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:44:45 11/06/2022 
// Design Name: 
// Module Name:    MUX3a1 
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
module MUX3a1(A, B, C, sel, Y);
input  [2:0]sel;
input [6:0] A, B, C;
output reg [6:0] Y;

always @(sel or A or B or C)
	begin
	case (sel)
		3'b001 : Y=A;
		3'b010 : Y=B;
		3'b100 : Y=C;
		
		default : Y = 7'bxxxxxxx;
		
	endcase
	end
	
endmodule

