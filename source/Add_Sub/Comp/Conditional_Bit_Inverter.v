`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:42 06/22/2020 
// Design Name: 
// Module Name:    Conditional_Bit_Inverter 
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
module Conditional_Bit_Inverter( InData , Sel ,OutData
    );
	 
	 parameter DataSize = 8 ;
	 
	 input [ DataSize - 1 : 0 ] InData ;
	 
	 input Sel ;
	 
	 output [ DataSize - 1 : 0 ] OutData ;
	 reg [ DataSize - 1 : 0 ] OutData ;
	 
	 always @( InData or Sel ) 
		begin 
			if ( Sel == 1'b1 )
				OutData = -InData ;
			else 
				OutData = InData ;
		end

endmodule
