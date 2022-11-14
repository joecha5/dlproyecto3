//Sumador Restador Binario
//Seccion 4-4, figura 4-13: Sumador - Restador de 4 bits

module SumadorRestadorde4bits(A,B,SEL,OUT); 

	//Definicion de Inputs y Outputs
	input [3:0] A,B;
	input SEL;
	output reg [3:0] OUT;
	
	always @ ( A or B or SEL)
	begin 
		case (SEL)
			1'b0:OUT = A-B;
			1'b1:OUT = A+B;
		endcase
	end
	
	
	

endmodule
