`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer: Mohamed Gamal Tawfik
// 
// Create Date:    10:00:22 06/22/2020 
// Design Name: 
// Module Name:    Mux_2_1 
// Project Name:   Floating point Unit
// Target Devices: 
// Tool versions: 
// Description: 
//				generic 2-inputs mux 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_2_1( Choice0 , Choice1 , Sel , Output
    );
	 
	 parameter DataSize = 8 ; // the size of data pass through the multiplixer
	 
	 input [ DataSize - 1 : 0 ] Choice0 , Choice1 ; // inputs to choose between them
	 
	 input Sel ; // control signal to specify the output 
	 
	 output [ DataSize - 1 : 0 ] Output ; // the output of the multiplixer
	 reg [ DataSize - 1 : 0 ] Output ;
	 
	 always @( Choice0 or Choice1 or Sel )
		begin 
			if ( Sel == 1 ) 
				begin 
					Output = Choice1 ;
				end
			else 
				begin 
					Output = Choice0 ;
				end
		end
	 
endmodule
