`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer: Mohamed Gamal Tawfik 
// 
// Create Date:    15:43:46 06/21/2020 
// Design Name: 
// Module Name:    ExponentDifference 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//              this block helps us to do the alignment stage.
//
//////////////////////////////////////////////////////////////////////////////////
module ExponentDifference( Exponent1 , Exponent2 , Difference , Sign , ZeroFlag
    );
	 
	 parameter ExponentSize =  8 ; // the size of exponent different form half, single or double percesion
	 
	 input [ ExponentSize - 1 : 0 ] Exponent1 , Exponent2 ;
	 output [ ExponentSize - 1 : 0 ] Difference ; // hold the difference to be shifted (For alignment)
	 reg [ ExponentSize - 1 : 0 ] Difference ;
	 output Sign ; // hold the sign of operation
	 reg Sign ;  // 0 -> + , 1 -> -
	 output ZeroFlag ; // indicate if the both exponets are equal.
	 
	 always @( Exponent1 or Exponent2 ) 
		begin : GET_D_SignOfD
			if ( Exponent2 > Exponent1 )
				begin : NEG_OPERATION
					Sign = 1 ; // negative sign
					Difference = Exponent2 - Exponent1 ;
				end 
			else 
				begin : POS_OR_ZERO_OPERATION
					Sign = 0 ; // positive sign 
					Difference = Exponent1 - Exponent2 ;
				end
			end 
			
	assign ZeroFlag = Difference ? 1'b0 : 1'b1 ;
	
endmodule
