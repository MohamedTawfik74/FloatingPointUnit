`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:04 07/13/2020 
// Design Name: 
// Module Name:    LeastBitstage1 
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
module LeastBitstage1( FirstBitOperands , FirstBitFirstCarry , FirstBitFirstSum
    );
	 
	 
	 input [ 23 : 0 ]FirstBitOperands ;
	 output [ 7 : 0 ] FirstBitFirstSum , FirstBitFirstCarry ; // first stage of the least bit
	 
	 
	 FullAdder FirstFAFirstBitFirstStage ( .X(FirstBitOperands[23]) , .Y(FirstBitOperands[22]) , 
					 .Z(FirstBitOperands[21]) , 
				    .Sum(FirstBitFirstSum[7]) , .CarryOut(FirstBitFirstCarry[7])
    );
	 
	 FullAdder SecondFAFirstBitFirstStage ( .X(FirstBitOperands[20]) , .Y(FirstBitOperands[19]) , 
					 .Z(FirstBitOperands[18]) , 
				    .Sum(FirstBitFirstSum[6]) , .CarryOut(FirstBitFirstCarry[6])
    );
	 
	 FullAdder ThirdFAFirstBitFirstStage ( .X(FirstBitOperands[17]) , .Y(FirstBitOperands[16]) , 
					 .Z(FirstBitOperands[15]) , 
				    .Sum(FirstBitFirstSum[5]) , .CarryOut(FirstBitFirstCarry[5])
    );
	 
	 FullAdder FourthFAFirstBitFirstStage ( .X(FirstBitOperands[14]) , .Y(FirstBitOperands[13]) , 
					 .Z(FirstBitOperands[12]) , 
				    .Sum(FirstBitFirstSum[4]) , .CarryOut(FirstBitFirstCarry[4])
    );
	 FullAdder FifthFAFirstBitFirstStage ( .X(FirstBitOperands[11]) , .Y(FirstBitOperands[10]) , 
					 .Z(FirstBitOperands[9]) , 
				    .Sum(FirstBitFirstSum[3]) , .CarryOut(FirstBitFirstCarry[3])
    );
	 FullAdder SixthFAFirstBitFirstStage ( .X(FirstBitOperands[8]) , .Y(FirstBitOperands[7]) , 
					 .Z(FirstBitOperands[6]) , 
				    .Sum(FirstBitFirstSum[2]) , .CarryOut(FirstBitFirstCarry[2])
    );
	 FullAdder SeventhFAFirstBitFirstStage ( .X(FirstBitOperands[5]) , .Y(FirstBitOperands[4]) , 
					 .Z(FirstBitOperands[3]) , 
				    .Sum(FirstBitFirstSum[1]) , .CarryOut(FirstBitFirstCarry[1])
    );
	 FullAdder EighthFAFirstBitFirstStage ( .X(FirstBitOperands[2]) , .Y(FirstBitOperands[1]) , 
					 .Z(FirstBitOperands[0]) , 
				    .Sum(FirstBitFirstSum[0]) , .CarryOut(FirstBitFirstCarry[0])
    );

endmodule
