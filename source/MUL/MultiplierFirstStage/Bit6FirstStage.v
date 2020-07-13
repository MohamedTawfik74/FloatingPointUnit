`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:35 07/13/2020 
// Design Name: 
// Module Name:    Bit6FirstStage 
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
module Bit6FirstStage( SixthBitOperands , Bit6FirstSum , Bit6FirstCarry
    );
	
	input	[18:0] SixthBitOperands ;
	output [ 6 : 0 ] Bit6FirstSum , Bit6FirstCarry ;
	
	FullAdder FA1 (
    .X(SixthBitOperands[18]), 
    .Y(SixthBitOperands[17]), 
    .Z(SixthBitOperands[16]), 
    .Sum(Bit6FirstSum[6]), 
    .CarryOut(Bit6FirstCarry[6])
    );
	 
	 FullAdder FA2 (
    .X(SixthBitOperands[15]), 
    .Y(SixthBitOperands[14]), 
    .Z(SixthBitOperands[13]), 
    .Sum(Bit6FirstSum[5]), 
    .CarryOut(Bit6FirstCarry[5])
    );
	 
	 FullAdder FA3 (
    .X(SixthBitOperands[12]), 
    .Y(SixthBitOperands[11]), 
    .Z(SixthBitOperands[10]), 
    .Sum(Bit6FirstSum[4]), 
    .CarryOut(Bit6FirstCarry[4])
    );
	 
	 FullAdder FA4 (
    .X(SixthBitOperands[9]), 
    .Y(SixthBitOperands[8]), 
    .Z(SixthBitOperands[7]), 
    .Sum(Bit6FirstSum[3]), 
    .CarryOut(Bit6FirstCarry[3])
    );
	 
	 FullAdder FA5 (
    .X(SixthBitOperands[6]), 
    .Y(SixthBitOperands[5]), 
    .Z(SixthBitOperands[4]), 
    .Sum(Bit6FirstSum[2]), 
    .CarryOut(Bit6FirstCarry[2])
    );
	 
	 HalfAdder HA1 (
    .X(SixthBitOperands[3]), 
    .Y(SixthBitOperands[2]), 
    .Sum(Bit6FirstSum[1]), 
    .CarryOut(Bit6FirstCarry[1])
    );
	 
	 HalfAdder HA2 (
    .X(SixthBitOperands[1]), 
    .Y(SixthBitOperands[0]), 
    .Sum(Bit6FirstSum[0]), 
    .CarryOut(Bit6FirstCarry[0])
    );

endmodule
