`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:11:17 06/27/2020 
// Design Name: 
// Module Name:    BNE 
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
module BNE( Shifting , AZs
    );
	 
	 input [ 5 : 0 ] AZs ; 
	 
	 output [ 2 : 0 ] Shifting ;	 

	 assign Shifting[2] = AZs[5] & AZs[4] & AZs[3] & AZs[2] ;
	 
	 assign Shifting[1] = AZs[5] & AZs[4] 
	                    & ( (!(AZs[3]))  
							  | (AZs[3] & (!(AZs[2])) | AZs[2] & AZs[1] & AZs[0] ) ) ;
	 
	 assign Shifting[0] = AZs[5] 
	                    & ( (!(AZs[4]))  
							  | AZs[4] & AZs[3] & ((!(AZs[2])) | AZs[2] & AZs[1] & (!(AZs[0])))  ) ;
	 
endmodule
