`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer: Mohamed Gamal Tawfik
// 
// Create Date:    22:31:38 06/21/2020 
// Design Name:     
// Module Name:    CompareComponent 
// Project Name:    Floating Point Unit
// Target Devices: 
// Tool versions: 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module CompareComponent( Mantissa1 , Mantissa2 , Compare
    );
	 
	 parameter DataSize = 8 ; // Mantissa Size 
	 
	 parameter Equal   = 2'b00 , // The both Mantissas are equal (there is no need for it)
				  Greater = 2'b01 , // Mantissa1 is greater than Mantissa2
				  Less    = 2'b10 ; // Mantissa2 is greater than Mantissa2
	 
	 input [ DataSize - 1 : 0 ] Mantissa1 , Mantissa2 ; 
	 
	 output [ 1 : 0 ] Compare ; 
	 reg [ 1 : 0 ] Compare ;
	 
	 // to omptimize the code there is no need for equal case
	 // as if the effective operation substraction and the exponent and mantissa is equale
	 // the result is zero and one of them is must be inverted to be correct and get zero value 
	 // so it can be included in one of those cases here it the same as Greater.
	 // and in case of the difference of exponent is not zero there is no need to know 
	 // the compare signal, so this optimization is also valid
	 always @( Mantissa1 or Mantissa2)
		begin : COMPARE_significands
			if ( Mantissa2 > Mantissa1 )
				begin 
					Compare = Less ;
				end
			else 
				begin 
					Compare = Greater ; 
				end
		end

endmodule
