`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:59 10/23/2022 
// Design Name: 
// Module Name:    FSM 
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
module FSM(clk, rst, valid, Count, Q0, Q1, LoadA, LoadB, LoadAdd, Shift, AddSub, DONE, cn, c1, rs);

//Inputs and Outputs
	input clk, rst;
	input valid, Count, Q0, Q1;
	output reg LoadA, LoadB, LoadAdd, Shift, AddSub, DONE, cn, c1, rs;

//Varaibles y Parametros
	parameter T0= 3'b000, T1= 3'b001, T2= 3'b010, T3= 3'b011, T4= 3'b100, T5= 3'b101, T6= 3'b110, T7= 3'b111;
	
 	reg [2:0] present,next;
	
always @ (posedge clk or posedge rst)

 			if(rst)
 				present = T0;
 			else
 				present = next;

always @(present or valid or Q1 or Q0 or Count)
 	
 		case(present)
 			T0:
 				if(valid)  
 				   next = T1;
 				else
 					next = T0; 
					
 			T1: 
				next = T2;
					
			T2:
 				if(Q0 & Q1) 
 					next = T5;
				else if(~Q0 & ~Q1)
					next = T5;
				else if(~Q0 & Q1)
					next = T4;
				else if(Q0 & ~Q1)
					next = T3;
 				else
 					next = T2; 
					
 			T3:
 				next = T5;
					 
			T4:
 				next = T5;
					
 			T5:
 				if(Count) 
 					next = T6;
				else
 					next = T2;
					
			T6:
 				next = T0;
					
 			T7:
 				next = T0;

 		endcase
 	



always @(present)
 	
 		case(present)

 			T0:
 				begin
					LoadA = 1'b0;
					LoadB = 1'b0;
					LoadAdd = 1'b0;
					Shift = 1'b0;
					AddSub = 1'b0;
					DONE = 1'b0;
					c1 = 1'b0;
					cn = 1'b0;
					rs = 1'b0;
				end   

 			T1:
 				begin
					LoadA = 1'b1;
					LoadB = 1'b1;
					LoadAdd = 1'b0;
					Shift = 1'b0;
					AddSub = 1'b0;
					DONE = 1'b0;
					c1 = 1'b0;
					cn = 1'b1;
					rs = 1'b1;
				end
				
			T2:
 				begin
					LoadA = 1'b0;
					LoadB = 1'b0;
					LoadAdd = 1'b0;
					Shift = 1'b0;
					AddSub = 1'b0;
					DONE = 1'b0;
					c1 = 1'b0;
					cn = 1'b0;
					rs = 1'b0;
				end
				
 			T3:
				begin
					LoadA = 1'b0;
					LoadB = 1'b0;
					LoadAdd = 1'b1;
					Shift = 1'b0;
					AddSub = 1'b0;
					DONE = 1'b0;
					c1 = 1'b0;
					cn = 1'b0;
					rs = 1'b0;
				end
			
			T4:
 				begin
					LoadA = 1'b0;
					LoadB = 1'b0;
					LoadAdd = 1'b1;
					Shift = 1'b0;
					AddSub = 1'b1;
					DONE = 1'b0;
					c1 = 1'b0;
					cn = 1'b0;
					rs = 1'b0;
				end   

 			T5:
 				begin
					LoadA = 1'b0;
					LoadB = 1'b0;
					LoadAdd = 1'b0;
					Shift = 1'b1;
					AddSub = 1'b0;
					DONE = 1'b0;
					c1 = 1'b1;
					cn = 1'b0;
					rs = 1'b0;
				end
				
			T6:
 				begin
					LoadA = 1'b0;
					LoadB = 1'b0;
					LoadAdd = 1'b0;
					Shift = 1'b0;
					AddSub = 1'b0;
					DONE = 1'b1;
					c1 = 1'b0;
					cn = 1'b0;
					rs = 1'b0;
				end
				
 			T7:
				begin
					LoadA = 1'b0;
					LoadB = 1'b0;
					LoadAdd = 1'b0;
					Shift = 1'b0;
					AddSub = 1'b0;
					DONE = 1'b0;
					c1 = 1'b0;
					cn = 1'b0;
					rs = 1'b0;
				end
 				
 		endcase
 endmodule

