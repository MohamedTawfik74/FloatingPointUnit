`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:43:52 06/29/2020 
// Design Name: 
// Module Name:    PipeLinedStage4 
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
module PipeLinedStage4( ExponentBase , EffCarry , AdderResult , NormShifts , TobeRounded , 
                        Round  , ExponentAdderResult1 , EffExponentAdderCarry1
    );
	 
	 parameter DataSize     = 32 , // single percesion
	           FractionSize = 23 , // Fraction size
				  MantissaSize = FractionSize + 1 , // Mantissa (1.Fraction) size
				  RoundingSize = MantissaSize + 3 , // Mantissa + Guard + RoundBit
				  ExponentSize = 8  ; // Expoent Size 
	 
	 input [ ExponentSize - 1  : 0 ] ExponentBase ; // hold the exponent base which will be updated
	 input EffCarry ; // hold the effective carry from addition operation
	 input [ RoundingSize - 1 : 0 ] AdderResult ; // hold the result of addition to be normlized and rounded
	 input [ 4 : 0 ] NormShifts ; // hold the normalization steps to be updated to exponent
	 
	 output [ MantissaSize - 1 : 0 ] TobeRounded ; // hold the mantissa that will be rounded
	 output Round ; // hold the control signal of rounding component
	 output [ ExponentSize - 1  : 0 ] ExponentAdderResult1 ; // hold the first updated exponent
	 output EffExponentAdderCarry1 ; // hold the carry from exponent to detect overflow exception
	 
	 // internal nets
	 wire [ RoundingSize - 1 : 0 ] NormResult ; // hold the result after normalization
	 wire [ RoundingSize - 1 : 0 ] AdditionOverflow ; // hold the normlized addition in case of overflow in addition
	 wire [ RoundingSize - 1 : 0 ] preTobeRounded ; // hold the correct result to be rounded 
	 wire [ ExponentSize - 1 : 0 ] UpdateExponet ;
	 wire ExponentAdderCarry1 ;
	 
	 // normalize
	 
	 LeftBarrelShifter#(RoundingSize) NormShifter ( .Mantissa(AdderResult) , .Shifts(NormShifts) , .Aligned(NormResult) 
    );

	  Mux_2_1#(RoundingSize) RoundMux ( // Mantissa + Guard + Round + Sticky
    .Choice0(NormResult), 
    .Choice1(AdditionOverflow), 
    .Sel(EffCarry), 
    .Output(preTobeRounded)
    );
	 
	 RoundControl RoundCU ( .LeastBit(preTobeRounded[3]) , 
	               .GuardBit(preTobeRounded[2]) , 
						.RoundBit(preTobeRounded[1]) , 
						.StickyBit(preTobeRounded[0]) , 
						.Round(Round)
    );
	 
	  Adder#(ExponentSize) ExponentAdder1 ( // first update of Exponent
    .Input1(ExponentBase), 
    .Input2(UpdateExponet), 
    .Output(ExponentAdderResult1), 
    .Carry(ExponentAdderCarry1)
    );

	 assign AdditionOverflow = { 1'b1 , AdderResult [ RoundingSize-1 : 1 ] } ; 
	  
	 assign UpdateExponet  = EffCarry ? 8'b00001 : (- { 3'b000 , NormShifts} )  ; // get the normlized 
	 assign EffExponentAdderCarry1 = ExponentAdderCarry1 & EffCarry ; // correct the overflow 
	 
	 assign TobeRounded = preTobeRounded [ RoundingSize - 1 : 3 ] ; // get the mantissa to be rounded
	 

endmodule
