`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:15:24 06/29/2020 
// Design Name: 
// Module Name:    PipelinedStgae3 
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
module PipelinedStgae3( MDFinalExponent , ExponentBase , OpSel , Adder1 , Adder2 , EffOperation , 
       EffCarry , AdderResult , NormShifts , ResultExponent
    );
	 
	 parameter DataSize     = 32 , // single percesion
	           FractionSize = 23 , // Fraction size
				  MantissaSize = FractionSize + 1 , // Mantissa (1.Fraction) size
				  RoundingSize = MantissaSize + 3 , // Mantissa + Guard + RoundBit
				  ExponentSize = 8  ; // Expoent Size 
				  
	  input [ RoundingSize - 1 : 0 ] Adder1 , Adder2 ; // Adder's inputs 
	  input EffOperation ; // hold the executing iperation : help us to correct overflow 
	  input [ ExponentSize - 1 : 0 ] MDFinalExponent , ExponentBase ; 
	  input OpSel ; // hold to choose between mul/div = 1 or add/sub = 0
	  
	  output [ RoundingSize - 1 : 0 ] AdderResult ;// hold the addition result
	  output EffCarry ; // old the correct carry of the addition
	  output [ 4 : 0 ] NormShifts ; // hold required steps to normlize the result
	  output [ ExponentSize - 1 : 0 ] ResultExponent ; // hold the chosen exponemt from add/sub or mul/div
	 
	  Adder#(RoundingSize) TwosCompAdder (
    .Input1(Adder1), 
    .Input2(Adder2), 
    .Output(AdderResult), 
    .Carry(AdderCarry)
    );

	 LZC ZerosCounter ( .AdderResult(AdderResult[RoundingSize-1 : 3 ] ) , .Shifts(NormShifts) 
    );
	 
	 Mux_2_1 ExponentMux ( // to choose exponemt from add/sub or mul/div
    .Choice0(ExponentBase), 
    .Choice1(MDFinalExponent), 
    .Sel(OpSel), 
    .Output(ResultExponent)
    );
	 
	// get the effictive overflow from the Addition 
	assign EffCarry = AdderCarry & (~EffOperation) & (~OpSel) ;

endmodule
