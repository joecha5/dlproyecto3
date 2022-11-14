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
module MultSecuencial(clk, rst, valid, A, B, prod, DONE);
	 
	 input wire clk, rst, valid;
	 input wire [3:0] A, B;
	 output [7:0] prod;
	 output DONE;
	 
	 wire LoadA, LoadB, LoadAdd, Shift, AddSub, Q0, Q1, enable, press, rs, Count;
	 
	 FSM fsm(clk, rst, valid, Count, Q0, Q1, LoadA, LoadB, LoadAdd, Shift, AddSub, DONE, press, enable, rs);
	 
	 MultiplicadorBooth mb(clk, rst, LoadA, LoadB, LoadAdd, Shift, A, B, AddSub, Q0, Q1, prod, rs);
	 
	 Count con(clk, rst, press, enable, Count);



endmodule
