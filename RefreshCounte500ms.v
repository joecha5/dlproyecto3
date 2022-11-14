`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:05 10/07/2022 
// Design Name: 
// Module Name:    RefreshCounte500ms 
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
module RefreshCounte500ms(clk, rst, Q, boton);
	input wire clk, rst, boton;
	output reg Q;
	reg [24:0] Cout;

always@(posedge clk or posedge rst)
		if(rst)
		begin 
			Cout = 25'd0;
			Q = 1'b0;
		end
				
		else if(Cout == 25'd25000000)
		begin 
			Cout = 25'd0;
			Q = 1'b1;
		end
			
		else if (boton)
		
		begin 
			Cout = Cout + 25'd1;
			Q = 1'b0;
		end
		
		else
		begin
			Cout = Cout;
			Q = 1'b0;
		end
endmodule
