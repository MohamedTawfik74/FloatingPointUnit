`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer: Mohamed Gamal Tawfik
// 
// Create Date:    18:40:15 06/21/2020 
// Design Name:  Floating point unit
// Module Name:    LeftBarrelShifter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//              this a optimized shiffter up to 24 shift (1.0*2^-24) or it a zero number ,
//              which the maximum possible logical shift
//
//////////////////////////////////////////////////////////////////////////////////
module RightBarrelShifter( Mantissa , Shifts , Aligned 
    );
	 
	 parameter DataSize =  25 ; // the size of single percesion mantissa ( 1 + fraction )
	 
	 input [ DataSize - 1 : 0 ] Mantissa ; // hold the mantissa to be aligned
	 
	 input [ 4 : 0 ] Shifts ; // hold the number of required shifts ( must not execeed 24 )
	 
	 output [ DataSize - 1 : 0 ] Aligned ; // hold the anligned mantissa	 
	 
	 // internal nets
	 
	 // outputs from each stage 
	 wire [ DataSize - 1 : 0 ] OutStage1 , OutStage2 , OutStage3 , OutStage4 , OutStage5 ; 
	 
	 // shifted mantissa from each stage 
	 wire [ DataSize - 1 : 0 ] shiftedStage1 , shiftedStage2 , shiftedStage3 , shiftedStage4 , shiftedStage5 ;
	 
	 // as the maximum number of shifts is 25 we need 5 stages 
	 
	 // stage 1
	 Mux_2_1#(DataSize) Stage1 ( // shift five positiona 
    .Choice0(Mantissa), 
    .Choice1(shiftedStage1), 
    .Sel(Shifts[0]), 
    .Output(OutStage1)
    );
	 
	 // stage 2
	 Mux_2_1#(DataSize) Stage2 (
    .Choice0(OutStage1), 
    .Choice1(shiftedStage2), 
    .Sel(Shifts[1]), 
    .Output(OutStage2)
    );
	 
	 // stage 3
	 Mux_2_1#(DataSize) Stage3 (
    .Choice0(OutStage2), 
    .Choice1(shiftedStage3), 
    .Sel(Shifts[2]), 
    .Output(OutStage3)
    );
	 
	 // stage 4
	 Mux_2_1#(DataSize) Stage4 (
    .Choice0(OutStage3), 
    .Choice1(shiftedStage4), 
    .Sel(Shifts[3]), 
    .Output(OutStage4)
    );
	 
	 // stage 5
	 Mux_2_1#(DataSize) Stage5 (
    .Choice0(OutStage4), 
    .Choice1(shiftedStage5), 
    .Sel(Shifts[4]), 
    .Output(OutStage5)
    );
	 
	 assign shiftedStage1 = Mantissa  >> 1 ,
	        shiftedStage2 = OutStage1 >> 2 ,
			  shiftedStage3 = OutStage2 >> 4 ,
			  shiftedStage4 = OutStage3 >> 8 ,
			  shiftedStage5 = OutStage4 >> 16 ;
			  
	assign Aligned = OutStage5 ;
	 
endmodule
