`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:52 06/29/2020 
// Design Name: 
// Module Name:    RoundControl 
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
module RoundControl( LeastBit , GuardBit , RoundBit , StickyBit , Round
    );
	 
	 input LeastBit ;// this the least bit in the mantissa
	 input GuardBit ; // hold the guard bit 
	 input RoundBit ; // hold the additional round bit
	 input StickyBit ; // hold the sticky bit : in out design hold the last discarded bit
	 
	 output Round ; // hold the round control signal 
	 
	 // round to nearest and if tie to even
	 assign Round = GuardBit & ( LeastBit | RoundBit | StickyBit ) ;

endmodule
