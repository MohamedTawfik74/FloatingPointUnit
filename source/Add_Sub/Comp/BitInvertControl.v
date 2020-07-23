`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:38 06/22/2020 
// Design Name: 
// Module Name:    BitInvertControl 
// Project Name:   Floating Point Unit 
// Target Devices: 
// Tool versions: 
// Description: 
//                Control which Mantissa will be inverted
//
//////////////////////////////////////////////////////////////////////////////////
module BitInvertControl( EffectiveOperation , ZeroD , SignD , Cmp , Control1 , Control2
    );
	 
	 input EffectiveOperation ; // hold the effictive operation 0 -> + , 1 -> -
	 
	 input ZeroD ; // hold the Zero Flag of exponent difference
	 input SignD ; // hold the sign of the exponent difference
	 
	 input [ 1 : 0 ]Cmp ; // hold the case of Mantissas compare (Less|Greater)
	 
	 output Control1 ; // control signal to conditional inverter of the Mantissa will be aligned
	 
	 output Control2 ; // control signal to conditional inverter is ready
	 
	 
	 // we only need to invert when the effictive operation is substraction
	 // The mantissa in the aligning path will awalys be inverted when d is not equal to zero
	 // and the mantisssa in the other path will never be inverted whten d is not quale to zero
    // in case of d is equal to zero, we need to depend on cmp signal and invert the less number as 
    // the both mantissa pass through the swap component 	 
	 assign Control2 = EffectiveOperation & ( (~ZeroD) | Cmp[1] ) & (~SignD) ,
			  Control1 = ( EffectiveOperation & (   ZeroD  & Cmp[0] ) ) | (EffectiveOperation & SignD)  ;

endmodule
