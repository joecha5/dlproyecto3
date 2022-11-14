`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:08 11/06/2022 
// Design Name: 
// Module Name:    DecoNeg 
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
module DecoNeg(entrada, salida);
input entrada;
output reg [6:0] salida;


always @ (entrada) 

		case (entrada)
		                    //gfedcba
			8'd0 : salida = 7'b1111111;
			8'd1 : salida = 7'b0111111;
		endcase


endmodule
