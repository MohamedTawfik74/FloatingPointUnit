`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:47 07/13/2020 
// Design Name: 
// Module Name:    Bit4FirstStage 
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
module Bit4FirstStage( FourthBitOperands , Bit4FirstSum , Bit4FirstCarry 
    );

	input [ 20 : 0 ] FourthBitOperands ; 
	output [ 6 : 0 ] Bit4FirstSum , Bit4FirstCarry ;
	
	FullAdder FA1 (
    .X(FourthBitOperands[20]), 
    .Y(FourthBitOperands[19]), 
    .Z(FourthBitOperands[18]), 
    .Sum(Bit4FirstSum[6]), 
    .CarryOut(Bit4FirstCarry[6])
    );
	 
	 FullAdder FA2 (
    .X(FourthBitOperands[17]), 
    .Y(FourthBitOperands[16]), 
    .Z(FourthBitOperands[15]), 
    .Sum(Bit4FirstSum[5]), 
    .CarryOut(Bit4FirstCarry[5])
    );
	 
	 FullAdder FA3 (
    .X(FourthBitOperands[14]), 
    .Y(FourthBitOperands[13]), 
    .Z(FourthBitOperands[12]), 
    .Sum(Bit4FirstSum[4]), 
    .CarryOut(Bit4FirstCarry[4])
    );
	 
	 FullAdder FA4 (
    .X(FourthBitOperands[11]), 
    .Y(FourthBitOperands[10]), 
    .Z(FourthBitOperands[9]), 
    .Sum(Bit4FirstSum[3]), 
    .CarryOut(Bit4FirstCarry[3])
    );
	 
	 FullAdder FA5 (
    .X(FourthBitOperands[8]), 
    .Y(FourthBitOperands[7]), 
    .Z(FourthBitOperands[6]), 
    .Sum(Bit4FirstSum[2]), 
    .CarryOut(Bit4FirstCarry[2])
    );
	 
	 FullAdder FA6 (
    .X(FourthBitOperands[5]), 
    .Y(FourthBitOperands[4]), 
    .Z(FourthBitOperands[3]), 
    .Sum(Bit4FirstSum[1]), 
    .CarryOut(Bit4FirstCarry[1])
    );
	 
	 FullAdder FA7 (
    .X(FourthBitOperands[2]), 
    .Y(FourthBitOperands[1]), 
    .Z(FourthBitOperands[0]), 
    .Sum(Bit4FirstSum[0]), 
    .CarryOut(Bit4FirstCarry[0])
    );

endmodule
