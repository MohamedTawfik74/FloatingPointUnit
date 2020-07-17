`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:38 07/15/2020 
// Design Name: 
// Module Name:    MULStage1 
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
module MULStage1( Fraction1 , Fraction2 , Result11 , Result12 , Result13 , Result21 , Result22 , Result23 ,
		Result31 , Result32 , Result33
    );
	 
	 parameter FractionSize = 23 , 
				  MantissaSize = FractionSize + 1 ;
	 
	 input [ FractionSize - 1 : 0 ] Fraction1 , Fraction2 ;
	 
	 wire [ MantissaSize - 1 : 0 ] Mantissa1 , Mantissa2 ;
	 
	 output [ 15 : 0 ] Result11 , Result12 , Result13 ;
	 output [ 15 : 0 ] Result21 , Result22 , Result23 ;
	 output [ 15 : 0 ] Result31 , Result32 , Result33 ;
	 
	 // Mantissa1 : // Byte3 = 8 bits // | // Byte2 = 8 bits // | // Byte1 = 8 bits // 
	 // Mantissa2 : // Byte3 = 8 bits // | // Byte2 = 8 bits // | // Byte1 = 8 bits // 
	 // Result11 = Mantissa1[Byte1] * Mantissa2[Byte1]
	 // Result12 = Mantissa1[Byte1] * Mantissa2[Byte2]
	 // and so on ...
	 
	 DADDA8_MUL Byte1Byte1 (
    .A(Mantissa1[7:0]), 
    .B(Mantissa2[7:0]), 
    .Result(Result11)
    );
	 
	  DADDA8_MUL Byte1Byte2 (
    .A(Mantissa1[7:0]), 
    .B(Mantissa2[15:8]), 
    .Result(Result12)
    );
	 
	  DADDA8_MUL Byte1Byte3 (
    .A(Mantissa1[7:0]), 
    .B(Mantissa2[23:16]), 
    .Result(Result13)
    );
	 
	  DADDA8_MUL Byte2Byte1 (
    .A(Mantissa1[15:8]), 
    .B(Mantissa2[7:0]), 
    .Result(Result21)
    );
	 
	  DADDA8_MUL Byte2Byte2 (
    .A(Mantissa1[15:8]), 
    .B(Mantissa2[15:8]), 
    .Result(Result22)
    );
	 
	  DADDA8_MUL Byte2Byte3 (
    .A(Mantissa1[15:8]), 
    .B(Mantissa2[23:16]), 
    .Result(Result23)
    );
	 
	  DADDA8_MUL Byte3Byte1 (
    .A(Mantissa1[23:16]), 
    .B(Mantissa2[7:0]), 
    .Result(Result31)
    );
	 
	  DADDA8_MUL Byte3Byte2 (
    .A(Mantissa1[23:16]), 
    .B(Mantissa2[15:8]), 
    .Result(Result32)
    );
	 
	  DADDA8_MUL Byte3Byte3 (
    .A(Mantissa1[23:16]), 
    .B(Mantissa2[23:16]), 
    .Result(Result33)
    );
	 
	 
	 assign Mantissa1 = {1'b1 , Fraction1 } ,
			  Mantissa2 = {1'b1 , Fraction2 } ;


endmodule
