`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:06 06/29/2020 
// Design Name: 
// Module Name:    PipelinedStage5 
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

module PipelinedStage5( TobeRounded , Round , ExponentAdderResult1 , FinalFraction , FinalExponent , ExponentAdderCarry2
    );
	 
	 parameter DataSize     = 32 , // single percesion
	           FractionSize = 23 , // Fraction size
				  MantissaSize = FractionSize + 1 , // Mantissa (1.Fraction) size
				  RoundingSize = MantissaSize + 3 , // Mantissa + Guard + RoundBit
				  ExponentSize = 8  ; // Expoent Size 
				  
	 input Round ; // hold the control signal to the Round Adder
	 input [ MantissaSize - 1 : 0 ] TobeRounded ; // hold the mantissa to be rounded
	 input [ ExponentSize - 1 : 0 ] ExponentAdderResult1 ;  // hold the last updated Exponent
	 
	 output [ FractionSize - 1 : 0 ] FinalFraction ; 
	 output [ ExponentSize - 1 : 0 ] FinalExponent ; 
	 output ExponentAdderCarry2 ;
	 
	 // internl nets 
	 
	 wire [ MantissaSize - 1 : 0 ] FinalMantissa ;
	 wire [ ExponentSize - 1 : 0 ] ExponentCarryin ; 
	 
	 roundAdder#(MantissaSize) Rounding ( 
	 .round(Round) , 
	 .InData(TobeRounded) , 
	 .RoundedData(FinalMantissa)  , 
	 .Overflow(RoundCarry)
    );
	 
	 Mux_2_1#(FractionSize) FractionMux ( // Mantissa + Guard + Round
    .Choice0(FinalMantissa[ MantissaSize - 2 : 0 ]), 
    .Choice1(FinalMantissa[ MantissaSize - 1 : 1 ]), 
    .Sel(RoundCarry), 
    .Output(FinalFraction)
    );
	 
	 Adder#(ExponentSize) ExponentAdder2 ( 
    .Input1(ExponentAdderResult1), 
    .Input2(ExponentCarryin),   
    .Output(FinalExponent), 
    .Carry(ExponentAdderCarry2)
    );
	 
	 assign ExponentCarryin = { 7'b0000000 ,  RoundCarry };

endmodule
