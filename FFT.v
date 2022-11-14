`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:45 09/29/2022 
// Design Name: 
// Module Name:    FFT 
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
module FFT(clk, rst, T, Q);
	input clk, rst, T; 
	output reg Q;  
  
  always @ (posedge clk or posedge rst) 
   
    if (rst)  
      Q = 1;  
    else if (T)  
      Q = ~Q;  
    else  
      Q = Q;  
   
  
endmodule
