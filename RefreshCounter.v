`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:15 09/27/2022 
// Design Name: 
// Module Name:    RefreshCounter 
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
module Cont(clk, rst, Cout);
	input wire clk, rst;
	output reg[18:0] Cout;

always@(posedge clk or posedge rst)
		if(rst)
			Cout = 19'd0;
			
		else if(Cout == 19'd480000)
			Cout = 19'd0;
			
		else 
			Cout = Cout + 19'd1;
 
endmodule
	   
