`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:36 07/15/2020 
// Design Name: 
// Module Name:    MULStage2 
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
module MULStage2( Result11 , Result12 , Result13 , Result21 , Result22 , 
			Result23 , Result31 , Result32 , Result33 , Result1 , Result2 , Result3 
    );
	 
	 input [ 15 : 0 ] Result11 , Result12 , Result13 ;
	 input [ 15 : 0 ] Result21 , Result22 , Result23 ;
	 input [ 15 : 0 ] Result31 , Result32 , Result33 ;
	 
	 output [ 32 : 0 ] Result1 , Result2 ;
	 output [ 31 : 0 ] Result3 ;
	 
	 wire [ 23 : 0 ] preResult11 , preResult12 , preResult31 ;
	 wire [ 23 : 0 ] preResult21 , preResult22 , preResult32 ;
	 wire [ 31 : 0 ] preResult13 , preResult23 , preResult33 ;
	 
	 wire [ 24 : 0 ] postAdder1 , postAdder2 , postAdder3 ;
	 wire [ 23 : 0 ] Adder1Result , Adder2Result , Adder3Result ; 
	 wire Adder1Carry , Adder2Carry , Adder3Carry ;
	 
	 wire [ 31 : 0 ] preAdder4 , preAdder5 , preAdder6 ;
	 wire [ 31 : 0 ] preResult1 , preResult2 , preResult3 ;
	 wire CarryResult1 , CarryResult2 ;
	 
	 
	 Adder#(24) Adder1 (
    .Input1(preResult11), 
    .Input2(preResult12), 
    .Output(Adder1Result), 
    .Carry(Adder1Carry)
    );
	 
	 Adder#(32) Adder4 (
    .Input1(preResult13), 
    .Input2(preAdder4), 
    .Output(preResult1), 
    .Carry(CarryResult1)
    );
	 
	 Adder#(24) Adder2 (
    .Input1(preResult21), 
    .Input2(preResult22), 
    .Output(Adder2Result), 
    .Carry(Adder2Carry)
    );
	 
	 Adder#(32) Adder5 (
    .Input1(preResult23), 
    .Input2(preAdder5), 
    .Output(preResult2), 
    .Carry(CarryResult2)
    );
	 
	 Adder#(24) Adder3 (
    .Input1(preResult31), 
    .Input2(preResult32), 
    .Output(Adder3Result), 
    .Carry(Adder3Carry)
    );
	 
	 Adder#(32) Adder6 (
    .Input1(preResult33), 
    .Input2(preAdder6), 
    .Output(preResult3), 
    .Carry()
    );
	 
	 assign preResult11 = { 8'b0 , Result11 } ,
		     preResult12 = { Result12 , 8'b0 } ,
			  preResult21 = { 8'b0 , Result21 } ,
			  preResult22 = { Result22 , 8'b0 } ,
			  preResult31 = { 8'b0 , Result31 } ,
			  preResult32 = { Result32 , 8'b0 } ;
			  
	assign preResult13 = { Result13 , 16'b0 } ,
			 preResult23 = { Result23 , 16'b0 } ,
			 preResult33 = { Result33 , 16'b0 } ;
			  
			  
	assign postAdder1 = { Adder1Carry , Adder1Result } ,
			 postAdder2 = { Adder2Carry , Adder2Result } ,
			 postAdder3 = { Adder3Carry , Adder3Result } ;
			 
	assign preAdder4 = { 7'b0 , postAdder1 } ,
			 preAdder5 = { 7'b0 , postAdder2 } ,
			 preAdder6 = { 7'b0 , postAdder3 } ;
			 
	assign Result1 = { CarryResult1 , preResult1 } ,
			 Result2 = { CarryResult2 , preResult2 } ,
			 Result3 = preResult3 ;

endmodule
