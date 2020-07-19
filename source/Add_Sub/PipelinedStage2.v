`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:24 06/28/2020 
// Design Name: 
// Module Name:    PipelinedStage2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 
//
//////////////////////////////////////////////////////////////////////////////////

module PipelinedStage2( MDExponent , Exponent1 , Exponent2 ,Mantissa1 , Mantissa2 , Compare , EffOperation , SignOfDifference , 
                        ZeroDifference , Difference , ExponentBase , Adder1 , Adder2 , MDFinalExponent
    );
	 
    parameter DataSize     = 32 , // single percesion
	           FractionSize = 23 , // Fraction size
				  MantissaSize = FractionSize + 1 , // Mantissa (1.Fraction) size
				  RoundingSize = MantissaSize + 3 , // Mantissa + Guard + RoundBit
				  ExponentSize = 8  ; // Expoent Size 
	
	input [ ExponentSize - 1 : 0 ] Exponent1 , Exponent2 ;
	input [ MantissaSize - 1 : 0 ] Mantissa1 , Mantissa2 ;
	input SignOfDifference ; // hold the sign of copmaring the two exponents
	input ZeroDifference ; // indicate that the exponents are equal : help us in inverting 
	input [ 1 : 0 ] Compare ; // hold the compare state of two mantissas
	input EffOperation ; // hold the effective operation
	input [ ExponentSize - 4 : 0 ] Difference ; // hold the difference of the exponents and used for alignment
	input [ ExponentSize - 1 : 0 ] MDExponent ; // the calculated exponent for mul/div
	
	output [ RoundingSize - 1 : 0 ] Adder1 , Adder2 ; // hold the inputs for the adder
	output [ ExponentSize - 1  : 0 ] ExponentBase ; // hold the base exponent wich we get from the difference component
	output [ ExponentSize - 1 : 0 ] MDFinalExponent ; // final exponent for mul/div  
	
	// Internal nets
	 
	wire [ MantissaSize - 1 : 0 ] swapedOperand1 , swapedOperand2 ;
	wire Control1 , Control2 ;
	wire [ RoundingSize -  1 : 0 ]  realOperand2 ;
	wire [ RoundingSize - 1 : 0 ]  Aligned , realOperand1 ;
	wire [ ExponentSize - 1 : 0 ] ExponentBase ;
	 
	 // get the operands ready
	 SwapComponent#(MantissaSize) Swap (
    .Mantissa1(Mantissa1), 
    .Mantissa2(Mantissa2), 
    .Sel(SignOfDifference), // indictae the samllest operand by the sign of difference
    .Output1(swapedOperand1), 
    .Output2(swapedOperand2)
    );
	 
	  BitInvertControl InvControl (  // generate the inerting control signal
    .EffectiveOperation(EffOperation), 
    .ZeroD(ZeroDifference), 
    .Cmp(Compare), 
    .Control1(Control1), 
    .Control2(Control2)
    );

	 // Alignment the lower mantissa
	 RightBarrelShifter#(RoundingSize) AlignShifter (
    .Mantissa(realOperand1), 
    .Shifts(Difference[4:0]), 
    .Aligned(Aligned)
    );
	 
	 // align Path
	 Conditional_Bit_Inverter#(RoundingSize) InverterAlign (
    .InData(Aligned), 
    .Sel(Control1), 
    .OutData(Adder1)
    );
	 
	 // normal Path
	 Conditional_Bit_Inverter#(RoundingSize) InverterNormal (
    .InData(realOperand2), 
    .Sel(Control2), 
    .OutData(Adder2)
    );
	 
	 // get the base exponent
	  Mux_2_1#(ExponentSize) ExponentMux (
    .Choice0(Exponent2), 
    .Choice1(Exponent1), 
    .Sel(SignOfDifference), 
    .Output(ExponentBase)
    );
	 
	 Adder#(ExponentSize) FinalMDExponent (
    .Input1(MDExponent), 
    .Input2(Exponent1), 
    .Output(MDFinalExponent), 
    .Carry() // it's meaningless for now could be usful later for exceptions
    );

	 
	 
	 // add guard and round bit
	assign realOperand1 = {swapedOperand1 , 3'b000 } ,
		    realOperand2 = {swapedOperand2 , 3'b000 } ;

endmodule
