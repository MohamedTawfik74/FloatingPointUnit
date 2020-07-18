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
module PipeLinedStage4( MULResult , MULorADD , ExponentBase , EffCarry , AdderResult , NormShifts , TobeRounded , 
                        Round  , NewExponent1 , EffExponentAdderCarry1
    );
	 
	 parameter DataSize     = 32 , // single percesion
	           FractionSize = 23 , // Fraction size
				  MantissaSize = FractionSize + 1 , // Mantissa (1.Fraction) size
				  RoundingSize = MantissaSize + 3 , // Mantissa + Guard + RoundBit
				  ExponentSize = 8  ; // Expoent Size 
	 
	 input [ 47 : 0 ] MULResult ; // hold the Result from multiplication circuit
	 input [ ExponentSize - 1  : 0 ] ExponentBase ; // hold the exponent base which will be updated
	 input EffCarry ; // hold the effective carry from addition operation
	 input [ RoundingSize - 1 : 0 ] AdderResult ; // hold the result of addition to be normlized and rounded
	 input [ 4 : 0 ] NormShifts ; // hold the normalization steps to be updated to exponent
	 input MULorADD ; // MUL/DIV - > 1
	 
	 output [ MantissaSize - 1 : 0 ] TobeRounded ; // hold the mantissa that will be rounded
	 output Round ; // hold the control signal of rounding component
	 output [ ExponentSize - 1 : 0 ] NewExponent1 ;
	 wire [ ExponentSize - 1  : 0 ] ExponentAdderResult1 ; // hold the first updated exponent
	 output EffExponentAdderCarry1 ; // hold the carry from exponent to detect overflow exception
	 
	 // internal nets
	 wire [ RoundingSize - 1 : 0 ] NormResult ; // hold the result after normalization
	 wire [ RoundingSize - 1 : 0 ] AdditionOverflow ; // hold the normlized addition in case of overflow in addition
	 wire [ RoundingSize - 1 : 0 ] preADDTobeRounded ; // hold the correct result to be rounded
	 wire [ RoundingSize - 3 : 0 ] preMULTobeRounded ;
	 wire [ ExponentSize - 1 : 0 ] UpdateExponet ;
	 wire ExponentAdderCarry1 ;
	 wire StickyBit ;
	 wire RoundADD , RoundMUL ;
	 
	 wire [ ExponentSize - 1  : 0 ]  ExponentMUL , ExponentUpdateSel ;
	 
	 // normalize
	 
	 LeftBarrelShifter#(RoundingSize) NormShifter ( .Mantissa(AdderResult) , .Shifts(NormShifts) , .Aligned(NormResult) 
    );
	 
	 getMULSticky Sticky (
    .MULDiscard(MULResult[21:0]), 
    .StickyBit(StickyBit)
    );
	 
	 Mux_2_1#(RoundingSize-2) MultiplicationMux ( // Mantissa + Guard + Round + Sticky
    .Choice0(MULResult[46:22]), 
    .Choice1(MULResult[47:23]), 
    .Sel(MULResult[47]), 
    .Output(preMULTobeRounded)
    );

	  Mux_2_1#(RoundingSize) AdditionMux ( // Mantissa + Guard + Round + Sticky
    .Choice0(NormResult), 
    .Choice1(AdditionOverflow), 
    .Sel(EffCarry), 
    .Output(preADDTobeRounded)
    );
	 
	 RoundControl RoundCUADD ( .LeastBit(preADDTobeRounded[3]) , 
	               .GuardBit(preADDTobeRounded[2]) , 
						.RoundBit(preADDTobeRounded[1]) , 
						.StickyBit(preADDTobeRounded[0]) , 
						.Round(RoundADD)
    );
	 
	  RoundControl RoundCUMUL ( .LeastBit(preMULTobeRounded[1]) , 
	               .GuardBit(preMULTobeRounded[0]) , 
						.RoundBit(1'b0) , // not needed here 
						.StickyBit(StickyBit) , 
						.Round(RoundMUL)
    );
	 
	  Mux_2_1#(MantissaSize) tobeRoundMux ( // Mantissa + Guard + Round + Sticky
    .Choice0(preADDTobeRounded[RoundingSize-1:3]), 
    .Choice1(preMULTobeRounded[RoundingSize-3:1]), 
    .Sel(MULorADD), 
    .Output(TobeRounded)
    );
	 
	  Mux_2_1#(1) RoundControlMux ( // Mantissa + Guard + Round + Sticky
    .Choice0(RoundADD), 
    .Choice1(RoundMUL), 
    .Sel(MULorADD), 
    .Output(Round)
    );
	 
	  Adder#(ExponentSize) ExponentAdder1 ( // first update of Exponent
    .Input1(ExponentBase), 
    .Input2(UpdateExponet), 
    .Output(ExponentAdderResult1), 
    .Carry(ExponentAdderCarry1)
    );
	 
	 Adder#(ExponentSize) ExponentMUL1 ( // first update of Exponent
    .Input1(ExponentBase), 
    .Input2(ExponentUpdateSel), 
    .Output(ExponentMUL), 
    .Carry() // to be disscused later to handle exceptions 
    );
	 
	  Mux_2_1#(ExponentSize) ExponentMux ( // Mantissa + Guard + Round + Sticky
    .Choice0(ExponentAdderResult1), 
    .Choice1(ExponentMUL), 
    .Sel(MULorADD), 
    .Output(NewExponent1)
    );
	 

	 assign AdditionOverflow = { 1'b1 , AdderResult [ RoundingSize-1 : 1 ] } ; 
	  
	 assign UpdateExponet  = EffCarry ? 8'b00001 : (- { 3'b000 , NormShifts} )  ; // get the normlized 
	 assign EffExponentAdderCarry1 = ExponentAdderCarry1 & EffCarry & (~MULorADD) ; // correct the overflow 
	 
	 assign ExponentUpdateSel = { 7'b0 , MULResult[47] } ;

endmodule
