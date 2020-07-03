`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Gamal Tawfik
// 
// Create Date:    13:13:57 06/21/2020 
// Design Name: 
// Module Name:    register 
// Project Name:  Floating Point Unit 
// Target Devices: 
// Tool versions: 
// Description: this a generic register to be used in different places 
//              in the FPU.
//
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module register( D , Q , CLK
    );
	 
	 parameter DataSize = 1 ; // to specify the data size
	 
	 input [ DataSize - 1 : 0 ] D ; // input Data
	 input CLK ; // CLK to the register
	 
	 output [ DataSize - 1 : 0 ] Q ; // the output data 
	 reg [ DataSize - 1 : 0 ] Q ;
	 
	 always @( posedge CLK ) 
		begin : FlipFlop
			Q <= D ;
		end
		
endmodule
