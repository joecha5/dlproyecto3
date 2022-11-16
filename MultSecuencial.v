`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:01 10/23/2022 
// Design Name: 
// Module Name:    MultSecuencial 
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
module MultSecuencial(clk, rst, valid, A, B, XA, XB);
	 
	 input wire clk, rst, valid;
	 input wire [3:0] A, B;
	 output wire [3:0] XA, XB;
	 output [7:0] prod;
	 
	 wire LoadA, LoadB, LoadAdd, Shift, AddSub, W, Q1, enable, press, rs, Count, DONE;
	 
	 FSM fsm(clk, rst, valid, Count, W, Q1, LoadA, LoadB, LoadAdd, Shift, AddSub, DONE, press, enable, rs);
	 
	 MultiplicadorBooth mb(clk, rst, LoadA, LoadB, LoadAdd, Shift, A, B, AddSub, W, Q1, prod2, rs, XA, XB);
	 
         Count con(clk, rst, press, enable, Count);

	 Registro8bits regsalida(clk, rst, DONE, prod2, prod);
	 
	 



endmodule
