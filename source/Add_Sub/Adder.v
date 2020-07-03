`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer: Mohamed Gamal Tawfik
// 
// Create Date:    20:21:42 06/22/2020 
// Design Name: 
// Module Name:    Adder 
// Project Name:  Floating point unit
// Target Devices: 
// Tool versions: 
// Description: 
//               Temporary behavioural code
//////////////////////////////////////////////////////////////////////////////////
module Adder( Input1 , Input2 , Output , Carry
    );
	 
	 parameter DataSize = 8 ;
	 
	 input [ DataSize - 1 : 0 ] Input1, Input2 ; 
	 
	 output [ DataSize - 1 : 0 ] Output ;
	 
	 output Carry ;
	 
	 assign { Carry , Output } = Input1 + Input2 ;

endmodule
