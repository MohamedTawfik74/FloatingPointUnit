`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer: Mohamed Gamal Tawfik 
// 
// Create Date:    12:43:40 06/28/2020 
// Design Name: 
// Module Name:    LZC 
// Project Name:   Floating Point Unit
// Target Devices: 
// Tool versions: 
// Description: 
//              Leading Zeros counter using BNE and NLC
//
//////////////////////////////////////////////////////////////////////////////////
module LZC( AdderResult , Shifts 
    );
	 
	 input [ 24 : 1 ] AdderResult ;	 // hold the result of addition
	 
	 output [ 4 : 0 ] Shifts ; // hold the number of required shifts for normlization
	 reg [ 4 : 0 ] Shifts ;
	 
	 // internal nets
	 
	 wire [ 3 : 0 ] allZeros ;
	 
	 wire [ 2 : 0 ] NumberofZeros0 , NumberofZeros1 , NumberofZeros2 , NumberofZeros3 ;
	 
	 // local counters 
	 
	 NLC MostBitsConuter( .ZAs(AdderResult[24:19]) , .allZeros(allZeros[3]) , .NumberofZeros(NumberofZeros3) 
    );
	 
	 NLC SecondBitsConuter(  .ZAs(AdderResult[18:13]) , .allZeros(allZeros[2]) , .NumberofZeros(NumberofZeros2) 
    );
	 
	 NLC ThirdBitsConuter(  .ZAs(AdderResult[12:7]) , .allZeros(allZeros[1]) , .NumberofZeros(NumberofZeros1) 
    );
	 
	 NLC LeastBitsConuter(  .ZAs(AdderResult[6:1]) , .allZeros(allZeros[0]) , .NumberofZeros(NumberofZeros0) 
    );
	 
	 // calucalte the numebr of required shifts
	 
	 always @( allZeros or NumberofZeros3 or NumberofZeros2 or NumberofZeros1 or NumberofZeros0 )
		begin 
			case(allZeros)
				4'b1000 , 4'b1001 , 4'b1010 , 4'b1011 :  Shifts = 5'b00110 + NumberofZeros2 ;  
				4'b1100 , 4'b1101 : Shifts = 5'b01100 + NumberofZeros1 ;
				4'b1110 : Shifts = 5'b10010 + NumberofZeros0 ;
				4'b1111 : Shifts = 5'b11000 ;
				default : Shifts = NumberofZeros3; // if the most 6 bits is not all zeros then shift only the detecte number
			endcase
		end

endmodule
