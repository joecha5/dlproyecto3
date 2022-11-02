`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:18 10/23/2022
// Design Name:   MultSecuencial
// Module Name:   C:/Users/Rolando/Desktop/Logico/Proyecto 3.2/Proyecto3/Tbmult.v
// Project Name:  Proyecto3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MultSecuencial
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module Tbmult;

	// Inputs
	reg clk;
	reg rst;
	reg valid;
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] prod;

	// Instantiate the Unit Under Test (UUT)
	MultSecuencial uut (
		.clk(clk), 
		.rst(rst), 
		.valid(valid), 
		.A(A), 
		.B(B), 
		.prod(prod),
		.DONE(DONE)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		valid = 0;
		A = 0;
		B = 0;

	   #20 rst = 1'b1;
		#20 rst = 1'b0;
		#20 A = 4'b0111;
		#20 B = 4'b0111;
		#20 valid = 1'b1;
		#20 valid = 1'b0;

	end
	
	initial
                    forever
                        #5 clk=~clk;
      
endmodule

