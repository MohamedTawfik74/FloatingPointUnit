`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer:   Mohamed Gamal Tawfik  
// 
// Create Date:    14:21:42 06/21/2020 
// Design Name: 
// Module Name:    roundAdder 
// Project Name:   Floating point unit 
// Target Devices: 
// Tool versions: 
// Description: 
//        this adder to get the exact floating point unit with least error 
//			 as the result could be infinite number of bits.
//////////////////////////////////////////////////////////////////////////////////
module roundAdder( round , InData , RoundedData , Overflow
    );
	 
	 parameter DataSize = 8 ; // the result size 
	 
	 input round ; // to indicate the result should be rounded or not
	 input [ DataSize - 1 : 0 ] InData ; // the result without the guard bits to be rounded
	 
	 output Overflow ; // to correct exponent 
	 output [ DataSize - 1 : 0 ] RoundedData ; // the final result 
	 
	 // if round = G ( L + R + T ) = 1 
	 // we should round up the result to the nearest or if tie to even 
    // which produce the less error 
	 // unless that the result stays the same without the guard bits.
	 assign { Overflow , RoundedData } = round ? (InData+1'b1) : (InData) ;  

endmodule
