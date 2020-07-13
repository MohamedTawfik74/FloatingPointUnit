`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:53 07/12/2020 
// Design Name: 
// Module Name:    HalfAdder 
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
module HalfAdder( X , Y , Sum , CarryOut 
    );
	 
	 input X , Y ; // input operands 
	 output Sum , CarryOut ; // outputs
	 
	 assign Sum = X ^ Y ;
	 assign CarryOut = X & Y ;


endmodule
