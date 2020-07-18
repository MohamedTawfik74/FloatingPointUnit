`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:05 06/22/2020 
// Design Name: 
// Module Name:    ExponentUpdate 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module ExponentUpdate( InExponent , OutExponent , CarryOut , CarryIn 
    );
	 
	 parameter ExponentSize = 8 ; // the size of exponent
	 
	 input [ ExponentSize - 1 : 0 ] InExponent ; //  

endmodule
