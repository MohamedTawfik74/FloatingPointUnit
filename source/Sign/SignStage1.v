`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:41 07/22/2020 
// Design Name: 
// Module Name:    SignStage1 
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
module SignStage1(SignOperandX , SignOperandY , ExclusiveSign
    );
	 
	 input SignOperandX , SignOperandY ; // hold the sign of both operands 
	 
	 output ExclusiveSign ; // hold the result where :
	 // this the result sign for the MUL/DIV directly
	 // partition the sign circuit of ADD/SUB for two branches with effective operation signal  
	 // one the Sign of the Result = Sx always.
	 //  the other depend on the bigger operand the effective operation
	 
	 assign ExclusiveSign = SignOperandX ^ SignOperandY ;

endmodule
