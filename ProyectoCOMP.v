`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:13 11/06/2022 
// Design Name: 
// Module Name:    ProyectoCOMP 
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
///////////////////////////////////////////////////////////////////////////////////
module ProyectoCOMP(clk, rst, boton, A, B, Y, Q1, Q2, Q3, Q4, XA,XB
    );
	 input wire clk, rst, boton;
	 input wire [3:0] A, B;
	 output wire [3:0] XA,XB;
	 output wire [6:0] Y;
	 output wire Q1, Q2, Q3, Q4;
	
	 	 
 wire [6:0]A1, B1, C1 ; 
 wire  Q;
 wire [7:0] prod;
 assign Q4 = 1'b1;
	 
	 
  Deco0 Deco0(prod, A1);
 
  Deco1 Deco1(prod, B1 );
 
  DecoNeg DecoNeg(prod[7], C1);
 
  Displays Displays(clk, rst, Q1, Q2, Q3);
 
  MUX3a1 MUX3a1(A1, B1, C1, {~Q3,~Q2,~Q1}, Y);
 
  MultSecuencial MultSecuencial(clk, rst, Q, A, B, prod,XA,XB);
 
  RefreshCounte500ms RefreshCounte500ms(clk, rst, Q, boton);
 
endmodule
