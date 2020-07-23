`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:52 06/28/2020 
// Design Name: 
// Module Name:    PipelinedStage1 
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
module PipelinedStage1( Operand1 , Operand2  , Operation , Exponent1 , Exponent2 , Mantissa1 , Mantissa2 ,
          OperandSign1 , OperandSign2 , Compare , EffOperation , Difference , NDifference ,
			 SignOfDifference , ZeroDifference , MDExponent 
    );
	 
	parameter DataSize     = 32 , // single percesion
	           FractionSize = 23 , // Fraction size
				  MantissaSize = FractionSize + 1 , // Mantissa (1.Fraction) size
				  RoundingSize = MantissaSize + 3 , // Mantissa + Guard + RoundBit
				  ExponentSize = 8  ; // Expoent Size 

	
	input [ DataSize - 1 : 0 ] Operand1 , Operand2 ; // Op1 (+/-) Op2
	
	input Operation ; // until complete all the algorthim 0 -> + , 1 -> - 
	 
	output [ ExponentSize - 1 : 0 ] Exponent1 , Exponent2 ;
   wire [ FractionSize - 1 : 0 ] Fraction1 , Fraction2 ; 
	output [ MantissaSize - 1 : 0 ] Mantissa1 , Mantissa2 ; 
	output OperandSign1 , OperandSign2 ; 
	
	// Exponet Differenece Nets
	output [ExponentSize - 4 : 0 ] Difference , NDifference ; 
	output SignOfDifference , ZeroDifference ;
	
	output [ 1 : 0 ] Compare ;
	output EffOperation ;	
	
	 // mul/div exponent 
	 
   output [ ExponentSize - 1 : 0 ]  MDExponent ; 
	wire [ ExponentSize - 1 : 0 ] ExponentBase ;
	 
	 
	 // get the difference of exponents to align the two operands
	ExponentDifference#(ExponentSize) ExponDifference (
    .Exponent1(Exponent1), 
    .Exponent2(Exponent2), 
    .Difference(Difference), 
    .Sign(SignOfDifference),
	 .ZeroFlag(ZeroDifference),
	 .NDifference(NDifference)
    );
	 
	 // indicate the lowest Mantissa
	 CompareComponent #(MantissaSize) Cmp (
    .Mantissa1(Mantissa1), 
    .Mantissa2(Mantissa2), 
    .Compare(Compare)
    );
	 
	 // first stage to get exponent of mul/div operation 
	 
	 Adder BaseAdder (
    .Input1(Exponent2), 
    .Input2(ExponentBase), 
    .Output(MDExponent), 
    .Carry() // the overflow is meaning less here (until now could be useful for exceptions later)
    );

	 
	 // Partition Operand1
	 assign Exponent1 = Operand1[ DataSize-2 : FractionSize ],
		     Fraction1 = Operand1 [ FractionSize - 1 : 0 ] ,
			  Mantissa1 = { 1'b1 , Fraction1 } ,
			  OperandSign1 = Operand1[ DataSize -1] ;
			  
	 // Partition Operand1
	 assign Exponent2 = Operand2[ DataSize-2 : FractionSize ],
		     Fraction2 = Operand2 [ FractionSize - 1 : 0 ] ,
			  Mantissa2 = { 1'b1 , Fraction2 } ,
			  OperandSign2 = Operand2[ DataSize -1] ;
			  
	 	// get the effective operation
	assign EffOperation =  Operation ^ OperandSign1 ^ OperandSign2 ;	
	
	assign ExponentBase = 8'b1000_0001 ; // tow's complement of 127 = Base 

endmodule
