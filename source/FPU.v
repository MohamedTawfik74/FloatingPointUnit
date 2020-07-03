`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:11 06/22/2020 
// Design Name: 
// Module Name:    FPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////
module FPU( Operand1 , Operand2 , Operation , Result , CLK 
    );
	 
	 parameter DataSize     = 32 , // single percesion
	           FractionSize = 23 , // Fraction size
				  MantissaSize = FractionSize + 1 , // Mantissa (1.Fraction) size
				  RoundingSize = MantissaSize + 3 , // Mantissa + Guard + RoundBit
				  ExponentSize = 8  ; // Expoent Size 

	input [ DataSize - 1 : 0 ] Operand1 , Operand2 ; // Op1 (+/-) Op2
	
	input Operation ; // until complete all the algorthim 0 -> + , 1 -> - 
	
	output [ DataSize - 1 : 0 ] Result ; //
	
	input CLK ;
	/*********************** Internal Nets ***************************/
	
	// Pipelined #1
	wire [ DataSize - 1 : 0 ] pipeOperand1 , pipeOperand2 ; // to receive from input
	wire pipeOperation ;
	
	wire [ ExponentSize - 1 : 0 ] Exponent1 , Exponent2 ; 
	wire [ MantissaSize - 1 : 0 ] Mantissa1 , Mantissa2 ; 
	wire OperandSign1 , OperandSign2 ; 
	
	wire [ ExponentSize - 1 : 0 ] pipeExponent1 , pipeExponent2 ;
	wire [ MantissaSize - 1 : 0 ] pipeMantissa1 , pipeMantissa2 ; 
	wire pipeOperandSign1 , pipeOperandSign2 ; 
	
	// Exponet Differenece Nets
	wire [4 : 0 ] Difference ; 
	wire SignOfDifference , ZeroDifference ;
	wire [4 : 0 ] pipeDifference ; 
	wire pipeSignOfDifference , pipeZeroDifference ;
	
	wire [ 1 : 0 ] Compare ;
	wire EffOperation ;
   wire EffCarry ;	
	wire [ 1 : 0 ] pipeCompare ;
	wire pipeEffOperation , pipeEffOperation2 ;
   wire pipeEffCarry ;
	
	// Pipelined #2
	wire [ ExponentSize - 1 : 0 ] pipeExponentBase2 , pipeExponentBase , ExponentBase ;
   // pipelined #3 
	wire [ RoundingSize - 1 : 0 ] Adder1 , Adder2 ;
	wire [ RoundingSize - 1 : 0 ] pipeAdder1 , pipeAdder2 ;
	wire [ RoundingSize - 1 : 0 ] AdderResult ;
	wire [ RoundingSize - 1 : 0 ] pipeAdderResult ;		
	
	// pipelined #4
	wire [ ExponentSize - 1 : 0 ] ExponentAdderResult1 , pipeExponentAdderResult1 ;
	wire ExponentAdderCarry1 , pipeExponentAdderCarry1 ;
	
	wire [ 4 : 0 ] NormShifts ;
	wire [ 4 : 0 ] pipeNormShifts ;
	
	wire [ MantissaSize - 1 : 0 ] TobeRounded , pipeTobeRounded ;
	wire Round , pipeRound ;
	
	// pipelined #5
	wire [ ExponentSize - 1 : 0 ] ExponentAdderResult2 , pipeExponentAdderResult2 ;
	wire ExponentAdderCarry2 , pipeExponentAdderCarry2;
	
	wire [ ExponentSize - 1 : 0 ] FinalExponent ;
	wire [ ExponentSize - 1 : 0 ] pipeFinalExponent ;
	
	wire [ FractionSize - 1 : 0 ] FinalFraction ;
	wire [ FractionSize - 1 : 0 ] pipeFinalFraction ;
	
	
	/************************** Stages ***************************/
	
	register#(DataSize) inputOperand1 ( .D(Operand1) , .Q(pipeOperand1) , .CLK(CLK)
    ); // receive the first operand
	 
	 register#(DataSize) inputOperand2 ( .D(Operand2) , .Q(pipeOperand2) , .CLK(CLK)
    ); // receive the second operand
	 
	 register inputOperation ( .D(Operation) , .Q(pipeOperation) , .CLK(CLK) 
	 ); // receive the operation
	 
	// Pipelined #1
	
	PipelinedStage1 Stage1 (
    .Operand1(pipeOperand1), 
    .Operand2(pipeOperand2), 
    .Operation(pipeOperation), 
    .Exponent1(Exponent1), 
    .Exponent2(Exponent2), 
    .Mantissa1(Mantissa1), 
    .Mantissa2(Mantissa2), 
    .OperandSign1(OperandSign1), 
    .OperandSign2(OperandSign2), 
    .Compare(Compare), 
    .EffOperation(EffOperation), 
    .Difference(Difference), 
    .SignOfDifference(SignOfDifference), 
    .ZeroDifference(ZeroDifference)
    );
	
	 
	 register#(MantissaSize) Mantissa1Reg ( .D(Mantissa1) , .Q(pipeMantissa1) , .CLK(CLK)
    ); // store the first mantissa
	 
	 register#(MantissaSize) Mantissa2Reg ( .D(Mantissa2) , .Q(pipeMantissa2) , .CLK(CLK)
    ); // store the second mantissa
	 
	 register#(ExponentSize) Exponent1Reg ( .D(Exponent1) , .Q(pipeExponent1) , .CLK(CLK)
    );
    
    register#(ExponentSize) Exponent2Reg ( .D(Exponent2) , .Q(pipeExponent2) , .CLK(CLK)
    );
	 
 	 register OperandSign1Reg ( .D(OperandSign1) , .Q(pipeOperandSign1) , .CLK(CLK) 
	 );
	 
	 register OperandSign2Reg ( .D(OperandSign2) , .Q(pipeOperandSign2) , .CLK(CLK) 
	 );
	 
	 register#(2) CompareReg ( .D(Compare) , .Q(pipeCompare) , .CLK(CLK) 
	 );
	 
	 register#(5) DifferenceReg ( .D(Difference) , .Q(pipeDifference) , .CLK(CLK) 
	 );
	 
	 register SignOfDifference1Reg ( .D(SignOfDifference) , .Q(pipeSignOfDifference) , .CLK(CLK) 
	 );
	 
	 register ZeroDifferenceReg ( .D(ZeroDifference) , .Q(pipeZeroDifference) , .CLK(CLK) 
	 );
	 
	 register EffectivOperationReg1 ( .D(EffOperation) , .Q(pipeEffOperation) , .CLK(CLK) 
	 ); // store the the effective operation
	 
	 // Pipelined #2 

    PipelinedStage2 Stage2 (
    .Exponent1(pipeExponent1), 
    .Exponent2(pipeExponent2), 
    .Mantissa1(pipeMantissa1), 
    .Mantissa2(pipeMantissa2), 
    .Compare(pipeCompare), 
    .EffOperation(pipeEffOperation), 
    .SignOfDifference(pipeSignOfDifference), 
    .ZeroDifference(pipeZeroDifference), 
    .Difference(pipeDifference), 
    .ExponentBase(ExponentBase), 
    .Adder1(Adder1), 
    .Adder2(Adder2)
    );
	 
	 register#(RoundingSize) Adder1Reg ( .D(Adder1) , .Q(pipeAdder1) , .CLK(CLK)
    ); // hold the first input for the Adder

	 register#(RoundingSize) Adder2Reg ( .D(Adder2) , .Q(pipeAdder2) , .CLK(CLK)
    ); // hold the second input for the Adder
	 
	 register#(ExponentSize) ExponentBaseReg ( .D(ExponentBase) , .Q(pipeExponentBase) , .CLK(CLK)
    );
	 
	 register EffectivOperationReg2 ( .D(pipeEffOperation) , .Q(pipeEffOperation2) , .CLK(CLK) 
	 ); // store the the effective operation
	 
	 // pipelined #3 : Add the two mantissa
	 
	 PipelinedStgae3 Stage3 (
    .Adder1(pipeAdder1), 
    .Adder2(pipeAdder2), 
    .EffOperation(pipeEffOperation2), 
    .EffCarry(EffCarry), 
    .AdderResult(AdderResult), 
    .NormShifts(NormShifts)
    );
	 
	  register#(RoundingSize) AdderResultReg ( .D(AdderResult) , .Q(pipeAdderResult) , .CLK(CLK)
    ); // hold Addition result
	 
	 register#(ExponentSize) ExponentBaseReg2 ( .D(pipeExponentBase) , .Q(pipeExponentBase2) , .CLK(CLK)
    ); // hold the Exponent Base 
	 
	 register EffCarryReg1 ( .D(EffCarry) , .Q(pipeEffCarry) , .CLK(CLK) 
	 ); // store the the effective carry
	 
	 register#(5) NormShiftsReg ( .D(NormShifts) , .Q(pipeNormShifts) , .CLK(CLK) 
	 ); 
	 
	 // Pipelined #4 : Normliza and get ready for Round Mantissa , Update Exponent
	 
	 PipeLinedStage4 Stage4 (
    .ExponentBase(pipeExponentBase2), 
    .EffCarry(pipeEffCarry), 
    .AdderResult(pipeAdderResult), 
    .NormShifts(pipeNormShifts), 
	 .TobeRounded(TobeRounded), 
    .Round(Round), 
    .ExponentAdderResult1(ExponentAdderResult1), 
    .EffExponentAdderCarry1(EffExponentAdderCarry1) 
    );
	 
	 register#(MantissaSize) TobeRoundedReg ( .D(TobeRounded) , .Q(pipeTobeRounded) , .CLK(CLK)
    );

	 register RoundControlReg ( .D(Round) , .Q(pipeRound) , .CLK(CLK)
    );
	 
	 register#(ExponentSize) ExponentUpdateReq1 ( .D(ExponentAdderResult1) , .Q(pipeExponentAdderResult1) , .CLK(CLK)
    );
	 
	 register ExponentCarry1Reg ( .D(EffExponentAdderCarry1) , .Q(pipeEffExponentAdderCarry1) , .CLK(CLK)
    );
	 
	 // Pipelined #5 : get the final exact result [  sign | exponent | fraction ] 
	 
	 PipelinedStage5 Stage5 (
    .TobeRounded(pipeTobeRounded), 
    .Round(pipeRound), 
    .ExponentAdderResult1(pipeExponentAdderResult1), 
    .FinalFraction(FinalFraction), 
    .FinalExponent(FinalExponent), 
    .ExponentAdderCarry2(ExponentAdderCarry2)
    );
	 
	 register#(FractionSize) FinalFractionReg ( .D(FinalFraction) , .Q(pipeFinalFraction) , .CLK(CLK)
    );
	 
	 register#(ExponentSize) FinalExponentReg ( .D(FinalExponent) , .Q(pipeFinalExponent) , .CLK(CLK)
    );
	 
	 // Pipelined #6 : Exceptions and special values 
	
		 
	// get result 
	assign Result = {  1'b0 , pipeFinalExponent , pipeFinalFraction } ;
	
endmodule
