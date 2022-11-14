`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:47 11/06/2022 
// Design Name: 
// Module Name:    Deco0 
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
module Deco0(entrada, salida );
input [7:0] entrada;
output reg [6:0] salida;


always @ (entrada) 

		case (entrada)
		
			8'd0 : salida = 7'b1000000;
			8'd1 : salida = 7'b1111001;
			8'd2 : salida = 7'b0100100;
			8'd3 : salida = 7'b0110000;
			8'd4 : salida = 7'b0011001;
			8'd5 : salida = 7'b0010010;
			8'd6 : salida = 7'b0000010;
			8'd7 : salida = 7'b1111000;
			8'd8 : salida = 7'b0000000;
			8'd9 : salida = 7'b0011000;
			8'd10 : salida = 7'b1000000;
			8'd12 : salida = 7'b0100100;
			8'd14 : salida = 7'b0011001;
			8'd15 : salida = 7'b0010010;
			8'd16 : salida = 7'b0000010;
			8'd18 : salida = 7'b0000000;
			8'd20 : salida = 7'b1000000;
			8'd21 : salida = 7'b1111001;
			8'd24 : salida = 7'b0011001;
			8'd25 : salida = 7'b0010010;
			8'd28 : salida = 7'b0000000;
			8'd30 : salida = 7'b1000000;
			8'd32 : salida = 7'b0100100;
			8'd35 : salida = 7'b0010010;
			8'd36 : salida = 7'b0000010;
			8'd40 : salida = 7'b1000000;
			8'd42 : salida = 7'b0100100;
			8'd48 : salida = 7'b0000000;
			8'd49 : salida = 7'b0011000;
			8'd56 : salida = 7'b0000010;
			8'd64 : salida = 7'b0011001;
			
			-8'd0 : salida = 7'b1000000;
			-8'd1 : salida = 7'b1111001;
			-8'd2 : salida = 7'b0100100;
			-8'd3 : salida = 7'b0110000;
			-8'd4 : salida = 7'b0011001;
			-8'd5 : salida = 7'b0010010;
			-8'd6 : salida = 7'b0000010;
			-8'd7 : salida = 7'b1111000;
			-8'd8 : salida = 7'b0000000;
			-8'd9 : salida = 7'b0011000;
			-8'd10 : salida = 7'b1000000;
			-8'd12 : salida = 7'b0100100;
			-8'd14 : salida = 7'b0011001;
			-8'd15 : salida = 7'b0010010;
			-8'd16 : salida = 7'b0000010;
			-8'd18 : salida = 7'b0000000;
			-8'd20 : salida = 7'b1000000;
			-8'd21 : salida = 7'b1111001;
			-8'd24 : salida = 7'b0011001;
			-8'd25 : salida = 7'b0010010;
			-8'd28 : salida = 7'b0000000;
			-8'd30 : salida = 7'b1000000;
			-8'd32 : salida = 7'b0100100;
			-8'd35 : salida = 7'b0010010;
			-8'd36 : salida = 7'b0000010;
			-8'd40 : salida = 7'b1000000;
			-8'd42 : salida = 7'b0100100;
			-8'd48 : salida = 7'b0000000;
			-8'd49 : salida = 7'b0011000;
			-8'd56 : salida = 7'b0000010;
			-8'd64 : salida = 7'b0011001;
			
			                    //gfedcba
		
			default : salida = 7'b0000110;
		endcase 

//assign salida;



endmodule


