`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:00 07/15/2020 
// Design Name: 
// Module Name:    MULStage3 
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
module MULStage3( Result1 , Result2 , Result3 , MULResult
    );
	 
	 input [ 32 : 0 ] Result1 , Result2 ;
	 input [ 31 : 0 ] Result3 ; 
	 
	 output [ 47 : 0 ] MULResult ; 
	 
	 wire [ 40 : 0 ] preResult1 , preResult2 , Adder1Result ;
	 wire Adder1Carry ;
	 wire [ 41 : 0 ] postAdder1 ;
	 
	 wire [ 47 : 0 ] preResult3 , preAdder2 ;
	 
	 Adder#(41) Adder1 (
    .Input1(preResult1), 
    .Input2(preResult2), 
    .Output(Adder1Result), 
    .Carry(Adder1Carry)
    );
	 
	 Adder#(48) Adder2 (
    .Input1(preAdder2), 
    .Input2(preResult3), 
    .Output(MULResult), 
    .Carry()
    );
	 
	 assign preResult1 = { 8'b0 , Result1 } ,
	        preResult2 = { Result2 , 8'b0 } ;
			  
	 assign postAdder1 = { Adder1Carry , Adder1Result } ;
	 
	 assign preAdder2 = { 6'b0 , postAdder1 } ,
			  preResult3 = { Result3 , 16'b0 } ;
			  
	 

endmodule
