`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:45 10/22/2022 
// Design Name: 
// Module Name:    Desplazamiento 
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
module regDesplazamiento(clk, rst, Shift, load, Data_In, Data_Out);
    input clk, rst, Shift, load;
    input [3:0] Data_In;
    output reg [3:0] Data_Out;

always @(posedge clk or posedge rst)
    if (rst)
        Data_Out = 4'b0000;
    else if(Shift)
        Data_Out = {Data_Out[3], Data_Out[3:1]};
    else if(load)
        Data_Out = Data_In;
    else
        Data_Out = Data_Out;

endmodule
