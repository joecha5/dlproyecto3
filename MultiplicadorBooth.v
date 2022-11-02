`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:51 10/22/2022 
// Design Name: 
// Module Name:    MultiplicadorBooth 
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
module MultiplicadorBooth(clk, rst, LoadA, LoadB, LoadAdd, Shift, A, B, SEL, Q0, Q1, prod, rs
    );
	 
	 input clk, rst, LoadA, LoadB, LoadAdd, Shift, SEL, rs;
	 input [3:0] A, B;
	 output Q0, Q1;
	 output [7:0] prod;
	 
	
	 wire [3:0] OUT, X, Y, Data_Out; 
	 
	 
	 assign prod = {Data_Out, Y};
	 assign Q0 = Y[0];
	 assign Z = Data_Out[0];	
	 
	 
	 regDesplazamiento1bit Q11(clk, rst| rs, Shift, Y[0], Q1);
	 
	 SumadorRestadorde4bits Addsub(Data_Out, X, SEL,OUT); 
	 
	 registro M(clk, rst, LoadA, A, X);
	 
	 regDesplazamiento HQ(clk, rst| rs, Shift, LoadAdd, OUT, Data_Out);
	 
	 RegDesLQ LQ(clk, rst, Shift, LoadB, Z, B, Y);

endmodule
