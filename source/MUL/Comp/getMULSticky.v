`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:52 07/15/2020 
// Design Name: 
// Module Name:    getMULSticky 
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
module getMULSticky( MULDiscard , StickyBit
    );
	 
	 input [ 22 : 1 ]  MULDiscard ;
	 output StickyBit ;
	 
	 assign StickyBit = ( ( MULDiscard[22] | MULDiscard[21] ) | ( MULDiscard[20] | MULDiscard[19] ) ) 
							| ( ( MULDiscard[18] | MULDiscard[17] ) | ( MULDiscard[16] | MULDiscard[15] ) )
							| ( ( MULDiscard[14] | MULDiscard[13] ) | ( MULDiscard[12] | MULDiscard[11] ) )
							| ( ( MULDiscard[10] |  MULDiscard[9] ) | ( MULDiscard[8]  | MULDiscard[7]  ) )
							| ( ( MULDiscard[6]  |  MULDiscard[5] ) | ( MULDiscard[4]  | MULDiscard[3]  ) )
							| ( ( MULDiscard[2]  |  MULDiscard[1] ) ) ;
endmodule
