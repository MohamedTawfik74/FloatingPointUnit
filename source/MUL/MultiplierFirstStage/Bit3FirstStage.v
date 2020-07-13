`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:23 07/13/2020 
// Design Name: 
// Module Name:    Bit3FirstStage 
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
module Bit3FirstStage ( ThirdBitOperands , ThirdBitFirstCarry , ThirdBitFirstSum
    );
	 
	 input [ 21 : 0 ]ThirdBitOperands ;
	 output [ 7 : 0 ] ThirdBitFirstSum , ThirdBitFirstCarry ; // first stage of the least bit
	 
	 
	 HalfAdder FirstFAThirdBitFirstStage ( .Y(ThirdBitOperands[20]) , 
					 .X(ThirdBitOperands[21]) , 
				    .Sum(ThirdBitFirstSum[7]) , .CarryOut(ThirdBitFirstCarry[7])
    );
	 
	 HalfAdder SecondFAThirdBitFirstStage ( .X(ThirdBitOperands[18]) , .Y(ThirdBitOperands[19]) , 
				    .Sum(ThirdBitFirstSum[6]) , .CarryOut(ThirdBitFirstCarry[6])
    );
	 
	 FullAdder ThirdFAThirdBitFirstStage ( .X(ThirdBitOperands[17]) , .Y(ThirdBitOperands[16]) , 
					 .Z(ThirdBitOperands[15]) , 
				    .Sum(ThirdBitFirstSum[5]) , .CarryOut(ThirdBitFirstCarry[5])
    );
	 
	 FullAdder FourthFAThirdBitFirstStage ( .X(ThirdBitOperands[14]) , .Y(ThirdBitOperands[13]) , 
					 .Z(ThirdBitOperands[12]) , 
				    .Sum(ThirdBitFirstSum[4]) , .CarryOut(ThirdBitFirstCarry[4])
    );
	 FullAdder FifthFAThirdBitFirstStage ( .X(ThirdBitOperands[11]) , .Y(ThirdBitOperands[10]) , 
					 .Z(ThirdBitOperands[9]) , 
				    .Sum(ThirdBitFirstSum[3]) , .CarryOut(ThirdBitFirstCarry[3])
    );
	 FullAdder SixthFAThirdBitFirstStage ( .X(ThirdBitOperands[8]) , .Y(ThirdBitOperands[7]) , 
					 .Z(ThirdBitOperands[6]) , 
				    .Sum(ThirdBitFirstSum[2]) , .CarryOut(ThirdBitFirstCarry[2])
    );
	 FullAdder SeventhFAThirdBitFirstStage ( .X(ThirdBitOperands[5]) , .Y(ThirdBitOperands[4]) , 
					 .Z(ThirdBitOperands[3]) , 
				    .Sum(ThirdBitFirstSum[1]) , .CarryOut(ThirdBitFirstCarry[1])
    );
	 FullAdder EighthFAThirdBitFirstStage ( .X(ThirdBitOperands[2]) , .Y(ThirdBitOperands[1]) , 
		          .Z(ThirdBitOperands[0]) ,
				    .Sum(ThirdBitFirstSum[0]) , .CarryOut(ThirdBitFirstCarry[0])
    );


endmodule
