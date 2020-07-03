`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:58 06/26/2020 
// Design Name: 
// Module Name:    NLC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//               Local counter of Zeros
//
//////////////////////////////////////////////////////////////////////////////////
module NLC(  ZAs , allZeros , NumberofZeros 
    );
	 
	 input [ 5 : 0 ] ZAs ; // Xk | Xk-1 | Xk-2 | Xk-3 | Xk-4 | Xk-5 : Zeros Anticipation bits
	 
	 output [ 2 : 0 ] NumberofZeros ; // Number of continuous zeros in this segment
    
    output allZeros ; // flag to indicate the 	 
	 
	 assign allZeros = !( (ZAs[5] | ZAs[4]) | (ZAs[3] | ZAs[2]) | (ZAs[1] | ZAs[0])) ; // indicate that the all bits are zeros
	  
	 assign NumberofZeros[2] = ~((ZAs[5] | ZAs[4]) | (ZAs[3] | ZAs[2]) ) , // indicate that the first four bits are zeros
	        NumberofZeros[1] = (~(ZAs[5] | ZAs[4])) & ( ZAs [3] | (  (~(ZAs [3])) & ZAs[2] ) ) ,
			  NumberofZeros[0] = (~ZAs[5]) & (ZAs[4] | ( (~(ZAs[4]| ZAs[3])) & ( ZAs[2] | (~(ZAs[2]|ZAs[1]) ) ) ) );
	 
	 
endmodule
