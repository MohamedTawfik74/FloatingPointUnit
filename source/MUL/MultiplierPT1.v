`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:25 07/13/2020 
// Design Name: 
// Module Name:    MultiplierPT1 
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

`define DataSize 24

module MultiplierPT1( Mantissa1 , Mantissa2 , Result 
    );
	 
	 input [ `DataSize - 1 : 0 ] Mantissa1 , Mantissa2 ; 
	 output [ `DataSize - 1 : 0 ] Result ; // the most significat half only
	 
	 
	 // Internal pipelined 
	 
	 // starting operands
	 wire [23:0] FirstBitOperands  ;
	 wire	[22:0] SecondBitOperands;
	 wire	[21:0] ThirdBitOperands ;
	 wire	[20:0] FourthBitOperands ;
	 wire	[19:0] FifthBitOperands ;
	 wire	[18:0] SixthBitOperands ;
			  
	 wire	[17:0] SeventhBitOperands ;
	 wire	[16:0] EighthBitOperands ;
	 wire	[15:0] NinethBitOperands ;
	 wire	[14:0] TenthBitOperands ;
	 wire	[13:0] EleventhBitOperands ;
	 wire	[12:0] TwelvthBitOperands ;
			  
	 wire	[11:0] ThirteenthBitOperands ;
	 wire	[10:0] FourteenthBitOperands ;
	 wire	[9:0] FifteenthBitOperands ;
	 wire	[8:0] SixteenthBitOperands ;
	 wire	[7:0] SeventeenthBitOperands ;
	 wire	[6:0] EighteenthBitOperands ;
			  
	 wire	[5:0] NineteenthBitOperands ;
	 wire	[4:0] TwentythBitOperands ;
	 wire	[3:0] TwentyfirstBitOperands ;
	 wire	[2:0] TwenthsecondBitOperands ;
	 wire	[1:0] TwentythirdBitOperands ;
	 wire	[0:0] TwentyfourthBitOperands ;
			  			  
	 
	 // First bit 
	 
	 wire [ 7 : 0 ] FirstBitFirstSum , FirstBitFirstCarry ; // first stage of the least bit
	 wire [ 2 : 0 ] FirstBitSecondCarry , FirstBitSecondSum ;
	 
	 // second bit
	 wire [ 7 : 0 ] SecondBitFirstSum , SecondBitFirstCarry ; // first stage of the second bit
	 wire [ 5 : 0 ] SecondBitSecondSum , SecondBitSecondCarry ; 
	 
	 // third bit 
	 wire [ 7 : 0 ] Bit3FirstSum , Bit3FirstCarry ; // first stage of the bit 3
	 wire [ 5 : 0 ] Bit3SecondSum , Bit3SecondCarry ; 
	 
	 
	 // 4th bit 
	 wire [ 6 : 0 ] Bit4FirstSum , Bit4FirstCarry ; // first stage of the bit 4
	 wire [ 4 : 0 ] Bit4SecondSum , Bit4SecondCarry ; 
	 
	 // 5th bit 
	 wire [ 6 : 0 ] Bit5FirstSum , Bit5FirstCarry ; // first stage of the bit 5
	 wire [ 4 : 0 ] Bit5SecondSum , Bit5SecondCarry ; 
	 
	 // 6th bit 
	 wire [ 6 : 0 ] Bit6FirstSum , Bit6FirstCarry ; // first stage of the bit 6
	 wire [ 4 : 0 ] Bit6SecondSum , Bit6SecondCarry ; 
	 
	 // 7th bit 
	 wire [ 5 : 0 ] Bit7FirstSum , Bit7FirstCarry ; // first stage of the bit 7
	 wire [ 4 : 0 ] Bit7SecondSum , Bit7SecondCarry ; 
	 
	 // 8th bit 
	 wire [ 5 : 0 ] Bit8FirstSum , Bit8FirstCarry ; // first stage of the bit 8
	 wire [ 3 : 0 ] Bit8SecondSum , Bit8SecondCarry ; 
	 
	 // 9th bit 
	 wire [ 5 : 0 ] Bit9FirstSum , Bit9FirstCarry ; // first stage of the bit 9
	 wire [ 3 : 0 ] Bit9SecondSum , Bit9SecondCarry ; 
	 
	 // 10th bit 
	 wire [ 4 : 0 ] Bit10FirstSum , Bit10FirstCarry ; // first stage of the bit 10
	 wire [ 3 : 0 ] Bit10SecondSum , Bit10SecondCarry ; 
	 
	 // 11th bit 
	 wire [ 4 : 0 ] Bit11FirstSum , Bit11FirstCarry ; // first stage of the bit 11
	 wire [ 3 : 0 ] Bit11SecondSum , Bit11SecondCarry ; 
	 
	 // 12th bit 
	 wire [ 4 : 0 ] Bit12FirstSum , Bit12FirstCarry ; // first stage of the bit 12
	 wire [ 3 : 0 ] Bit12SecondSum , Bit12SecondCarry ; 
	 
	 // 13th bit 
	 wire [ 3 : 0 ] Bit13FirstSum , Bit13FirstCarry ; // first stage of the bit 13
	 wire [ 2 : 0 ] Bit13SecondSum , Bit13SecondCarry ; 
	 
	 // 14th bit 
	 wire [ 3 : 0 ] Bit14FirstSum , Bit14FirstCarry ; // first stage of the bit 14
	 wire [ 2 : 0 ] Bit14SecondSum , Bit14SecondCarry ; 
	 
	 // 15th bit 
	 wire [ 3 : 0 ] Bit15FirstSum , Bit15FirstCarry ; // first stage of the bit 15
	 wire [ 2 : 0 ] Bit15SecondSum , Bit15SecondCarry ; 
	 
	 // 16th bit 
	 wire [ 2 : 0 ] Bit16FirstSum , Bit16FirstCarry ; // first stage of the bit 16
	 wire [ 2 : 0 ] Bit16SecondSum , Bit16SecondCarry ; 
	 
	 // 17th bit 
	 wire [ 2 : 0 ] Bit17FirstSum , Bit17FirstCarry ; // first stage of the bit 17
	 wire [ 1 : 0 ] Bit17SecondSum , Bit17SecondCarry ; 
	 
	 // 18th bit 
	 wire [ 2 : 0 ] Bit18FirstSum , Bit18FirstCarry ; // first stage of the bit 18
	 wire [ 1 : 0 ] Bit18SecondSum , Bit18SecondCarry ; 
	 
	 // 19th bit 
	 wire [ 1 : 0 ] Bit19FirstSum , Bit19FirstCarry ; // first stage of the bit 19
	 wire [ 1 : 0 ] Bit19SecondSum , Bit19SecondCarry ; 
	 
	 // 20th bit 
	 wire [ 1 : 0 ] Bit20FirstSum , Bit20FirstCarry ; // first stage of the bit 20
	 wire [ 1 : 0 ] Bit20SecondSum , Bit20SecondCarry ; 
	 
	 // 21th bit 
	 wire [ 1 : 0 ] Bit21FirstSum , Bit21FirstCarry ; // first stage of the bit 21
	 wire [ 1 : 0 ] Bit21SecondSum , Bit21SecondCarry ; 
	 
	 // 22th bit 
	 wire [ 0 : 0 ] Bit22FirstSum , Bit22FirstCarry ; // first stage of the bit 22
	 wire [ 0 : 0 ] Bit22SecondSum , Bit22SecondCarry ; 
	 
	 // 23th bit 
	 wire [ 0 : 0 ] Bit23FirstSum , Bit23FirstCarry ; // first stage of the bit 23
	 wire [ 0 : 0 ] Bit23SecondSum , Bit23SecondCarry ; 
	 
	 // 24th bit 
	 wire [ 0 : 0 ] Bit24FirstSum , Bit24FirstCarry ; // first stage of the bit 24
	 wire [ 0 : 0 ] Bit24SecondSum , Bit24SecondCarry ; 
	 
	 // first bit stages 
	 LeastBitstage1 FirstBitFirstStage (
    .FirstBitOperands(FirstBitOperands), 
    .FirstBitFirstCarry(FirstBitFirstCarry), 
    .FirstBitFirstSum(FirstBitFirstSum)
    );
	 
	 LeastBitstage2 FirstBitSecondStage (
    .FirstBitFirstSum(FirstBitFirstSum), 
    .FirstBitSecondSum(FirstBitSecondSum), 
    .FirstBitSecondCarry(FirstBitSecondCarry)
    );
	 
	 // Second bit stages
	 
	 SecondBitFirstStage Bit2Stage1 (
    .SecondBitOperands(SecondBitOperands), 
    .SecondBitFirstCarry(SecondBitFirstCarry), 
    .SecondBitFirstSum(SecondBitFirstSum)
    );
	 
	 SecondBitSecondStage Bit2Stage2 (
    .SecondBitFirstSum(SecondBitFirstSum), 
    .FirstBitFirstCarry(FirstBitFirstCarry), 
    .SecondBitSecondSum(SecondBitSecondSum), 
    .SecondBitSecondCarry(SecondBitSecondCarry)
    );
	 
	 // third bit
	 
	 Bit3FirstStage Bit3Stage1 (
    .ThirdBitOperands(ThirdBitOperands), 
    .ThirdBitFirstCarry(Bit3FirstCarry), 
    .ThirdBitFirstSum(Bit3FirstSum)
    );
	 
	 Bit3SecondStage Bit3Stage2 (
    .SecondBitFirstCarry(SecondBitFirstCarry), 
    .Bit3FirstSum(Bit3FirstSum), 
    .Bit3SecondSum(Bit3SecondSum), 
    .Bit3SecondCarry(Bit3SecondCarry)
    );
	 
	 
	 // 4th bit
	 
	 Bit4FirstStage Bit4Stage1 (
    .FourthBitOperands(FourthBitOperands), 
    .Bit4FirstSum(Bit4FirstSum), 
    .Bit4FirstCarry(Bit4FirstCarry)
    );
	 
	 Bit4SecondStage Bit4Stage2 (
    .Bit3FirstCarry(Bit3FirstCarry), 
    .Bit4FirstSum(Bit4FirstSum), 
    .Bit4SecondSum(Bit4SecondSum), 
    .Bit4SecondCarry(Bit4SecondCarry)
    );
	 
	 // 5th bit
	 
	 Bit5FirstStage Bit5Stage1 (
    .Bit5FirstSum(Bit5FirstSum), 
    .Bit5FirstCarry(Bit5FirstCarry), 
    .FifthBitOperands(FifthBitOperands)
    );
	 
	 Bit5SecondStage Bit5Stage2 (
    .Bit5FirstSum(Bit5FirstSum), 
    .Bit4FirstCarry(Bit4FirstCarry), 
    .Bit5SecondSum(Bit5SecondSum), 
    .Bit5SecondCarry(Bit5SecondCarry)
    );
	 
	 // 6th bit
	 
	 Bit6FirstStage Bit6Stage1 (
    .SixthBitOperands(SixthBitOperands), 
    .Bit6FirstSum(Bit6FirstSum), 
    .Bit6FirstCarry(Bit6FirstCarry)
    );
	 
	 Bit6SecondStage Bit6Stage2 (
    .Bit6FirstSum(Bit6FirstSum), 
    .Bit5FirstCarry(Bit5FirstCarry), 
    .Bit6SecondSum(Bit6SecondSum), 
    .Bit6SecondCarry(Bit6SecondCarry)
    );
	 
	 // 7th bit
	 
	 
	 
	 
	 // Starting Operands 
	 assign FirstBitOperands = Mantissa2[0:23] & Mantissa1[23:0] ,
			  SecondBitOperands = Mantissa2[1:23] & Mantissa1[23:1] ,
			  ThirdBitOperands = Mantissa2[2:23] & Mantissa1[23:2] ,
			  FourthBitOperands = Mantissa2[3:23] & Mantissa1[23:3] ,
			  FifthBitOperands = Mantissa2[4:23] & Mantissa1[23:4] ,
			  SixthBitOperands = Mantissa2[5:23] & Mantissa1[23:5] ,
			  
			  SeventhBitOperands = Mantissa2[6:23] & Mantissa1[23:6] ,
			  EighthBitOperands = Mantissa2[7:23] & Mantissa1[23:7] ,
			  NinethBitOperands = Mantissa2[8:23] & Mantissa1[23:8] ,
			  TenthBitOperands = Mantissa2[9:23] & Mantissa1[23:9] ,
			  EleventhBitOperands = Mantissa2[10:23] & Mantissa1[23:10] ,
			  TwelvthBitOperands = Mantissa2[11:23] & Mantissa1[23:11] ,
			  
			  ThirteenthBitOperands = Mantissa2[12:23] & Mantissa1[23:12] ,
			  FourteenthBitOperands = Mantissa2[13:23] & Mantissa1[23:13] ,
			  FifteenthBitOperands = Mantissa2[14:23] & Mantissa1[23:14] ,
			  SixteenthBitOperands = Mantissa2[15:23] & Mantissa1[23:15] ,
			  SeventeenthBitOperands = Mantissa2[16:23] & Mantissa1[23:16] ,
			  EighteenthBitOperands = Mantissa2[17:23] & Mantissa1[23:17] ,
			  
			  NineteenthBitOperands = Mantissa2[18:23] & Mantissa1[23:18] ,
			  TwentythBitOperands = Mantissa2[19:23] & Mantissa1[23:19] ,
			  TwentyfirstBitOperands = Mantissa2[20:23] & Mantissa1[23:20] ,
			  TwenthsecondBitOperands = Mantissa2[21:23] & Mantissa1[23:21] ,
			  TwentythirdBitOperands = Mantissa2[22:23] & Mantissa1[23:22] ,
			  TwentyfourthBitOperands = Mantissa2[23:23] & Mantissa1[23:23] ;
	 
endmodule

