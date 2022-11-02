`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:10 10/22/2022 
// Design Name: 
// Module Name:    Registro1bit 
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
module regDesplazamiento1bit(clk, rst, Shift, q, Data_Out);
    input clk, rst, Shift, q;
    output reg Data_Out;

always @(posedge clk, posedge rst)
    if (rst)
        Data_Out = 1'b0;
    else if(Shift)
        Data_Out = q;
    else
        Data_Out = Data_Out;

endmodule
