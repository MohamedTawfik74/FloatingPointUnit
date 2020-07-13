`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:53 07/12/2020 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder( X , Y , Z , Sum , CarryOut
    );
	 
	 input Z ,Y , X ; 
	 output Sum , CarryOut ;
	 
	 wire InternalSum , InternalCarry1 , InternalCarry2 ;
	 
	 HalfAdder First (
    .X(X), 
    .Y(Y), 
    .Sum(InternalSum), 
    .CarryOut(InternalCarry1)
    );
	 
	  HalfAdder Second (
    .X(Z), 
    .Y(InternalSum ), 
    .Sum(InternalCarry2), 
    .CarryOut(Sum)
    );
	 
	 assign CarryOut = InternalCarry1 | InternalCarry2 ;

endmodule
