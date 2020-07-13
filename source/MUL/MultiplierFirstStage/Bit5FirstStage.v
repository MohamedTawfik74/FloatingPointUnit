`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:58 07/13/2020 
// Design Name: 
// Module Name:    Bit5FirstStage 
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
module Bit5FirstStage( Bit5FirstSum , Bit5FirstCarry , FifthBitOperands
    );
	 
	input [19:0] FifthBitOperands ;
	output [ 6 : 0 ] Bit5FirstSum , Bit5FirstCarry ;
	
	
FullAdder FA1 (
    .X(FifthBitOperands[19]), 
    .Y(FifthBitOperands[18]), 
    .Z(FifthBitOperands[17]), 
    .Sum(Bit5FirstSum[6]), 
    .CarryOut(Bit5FirstCarry[6])
    );
	 
FullAdder FA2 (
    .X(FifthBitOperands[16]), 
    .Y(FifthBitOperands[15]), 
    .Z(FifthBitOperands[14]), 
    .Sum(Bit5FirstSum[5]), 
    .CarryOut(Bit5FirstCarry[5])
    );
	 
FullAdder FA3 (
    .X(FifthBitOperands[13]), 
    .Y(FifthBitOperands[12]), 
    .Z(FifthBitOperands[11]), 
    .Sum(Bit5FirstSum[4]), 
    .CarryOut(Bit5FirstCarry[4])
    );

	 
FullAdder FA6 (
    .X(FifthBitOperands[10]), 
    .Y(FifthBitOperands[9]), 
    .Z(FifthBitOperands[8]), 
    .Sum(Bit5FirstSum[3]), 
    .CarryOut(Bit5FirstCarry[3])
    );
	 
	 
FullAdder FA4 (
    .X(FifthBitOperands[7]), 
    .Y(FifthBitOperands[6]), 
    .Z(FifthBitOperands[5]), 
    .Sum(Bit5FirstSum[2]), 
    .CarryOut(Bit5FirstCarry[2])
    );
	 
FullAdder FA5 (
    .X(FifthBitOperands[4]), 
    .Y(FifthBitOperands[3]), 
    .Z(FifthBitOperands[2]), 
    .Sum(Bit5FirstSum[1]), 
    .CarryOut(Bit5FirstCarry[1])
    );

HalfAdder HA1 (
    .X(FifthBitOperands[1]), 
    .Y(FifthBitOperands[0]), 
    .Sum(Bit5FirstSum[0]), 
    .CarryOut(Bit5FirstCarry[0])
    );


endmodule
