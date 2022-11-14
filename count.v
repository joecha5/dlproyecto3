`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:53 10/21/2022 
// Design Name: 
// Module Name:    Count 
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
module Count(clk, rst, press, enable, Q);
	input wire clk, rst, press, enable;
	output reg Q;
	reg [1:0] Cout;

always@(posedge clk or posedge rst)
		if(rst)
		begin 
			Cout = 2'd3;
			Q = 1'b0;
		end
		
		else if(press)
		begin 
			Cout = 2'd3;
			Q = 1'b0;
		end

		else if(enable)
		begin 
			Cout = Cout - 2'd1;
			Q = 1'b0;
		end
		
		else if(Cout == 2'd0)
		begin 
			Cout = 2'd0;
			Q = 1'b1;
		end
			
		else 
		begin 
			Cout = Cout;
			Q = 1'b0;
		end

endmodule
