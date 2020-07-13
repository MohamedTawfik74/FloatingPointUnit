`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:55 07/13/2020 
// Design Name: 
// Module Name:    SecondBitFirstStage 
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
module SecondBitFirstStage ( SecondBitOperands , SecondBitFirstCarry , SecondBitFirstSum
    );
	 
	 input [ 22 : 0 ]SecondBitOperands ;
	 output [ 7 : 0 ] SecondBitFirstSum , SecondBitFirstCarry ; // first stage of the least bit
	 
	 
	 HalfAdder FirstFASecondBitFirstStage ( .Y(SecondBitOperands[22]) , 
					 .X(SecondBitOperands[21]) , 
				    .Sum(SecondBitFirstSum[7]) , .CarryOut(SecondBitFirstCarry[7])
    );
	 
	 FullAdder SecondFASecondBitFirstStage ( .X(SecondBitOperands[20]) , .Y(SecondBitOperands[19]) , 
					 .Z(SecondBitOperands[18]) , 
				    .Sum(SecondBitFirstSum[6]) , .CarryOut(SecondBitFirstCarry[6])
    );
	 
	 FullAdder ThirdFASecondBitFirstStage ( .X(SecondBitOperands[17]) , .Y(SecondBitOperands[16]) , 
					 .Z(SecondBitOperands[15]) , 
				    .Sum(SecondBitFirstSum[5]) , .CarryOut(SecondBitFirstCarry[5])
    );
	 
	 FullAdder FourthFASecondBitFirstStage ( .X(SecondBitOperands[14]) , .Y(SecondBitOperands[13]) , 
					 .Z(SecondBitOperands[12]) , 
				    .Sum(SecondBitFirstSum[4]) , .CarryOut(SecondBitFirstCarry[4])
    );
	 FullAdder FifthFASecondBitFirstStage ( .X(SecondBitOperands[11]) , .Y(SecondBitOperands[10]) , 
					 .Z(SecondBitOperands[9]) , 
				    .Sum(SecondBitFirstSum[3]) , .CarryOut(SecondBitFirstCarry[3])
    );
	 FullAdder SixthFASecondBitFirstStage ( .X(SecondBitOperands[8]) , .Y(SecondBitOperands[7]) , 
					 .Z(SecondBitOperands[6]) , 
				    .Sum(SecondBitFirstSum[2]) , .CarryOut(SecondBitFirstCarry[2])
    );
	 FullAdder SeventhFASecondBitFirstStage ( .X(SecondBitOperands[5]) , .Y(SecondBitOperands[4]) , 
					 .Z(SecondBitOperands[3]) , 
				    .Sum(SecondBitFirstSum[1]) , .CarryOut(SecondBitFirstCarry[1])
    );
	 FullAdder EighthFASecondBitFirstStage ( .X(SecondBitOperands[2]) , .Y(SecondBitOperands[1]) , 
		          .Z(SecondBitOperands[0]) ,
				    .Sum(SecondBitFirstSum[0]) , .CarryOut(SecondBitFirstCarry[0])
    );

endmodule
