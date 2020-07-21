
`timescale 1ns/1ps


module getStickyADD ( DiscardBits , StickyBit 
);


	input [ 23 : 0 ] DiscardBits ;
	output StickyBit ;
	
	
	assign StickyBit =   DiscardBits [23] | DiscardBits [22] 
			  |   DiscardBits [21] | DiscardBits [20]
		          |   DiscardBits [19] | DiscardBits [18]
			  |   DiscardBits [17] | DiscardBits [16]
	                  |   DiscardBits [15] | DiscardBits [14]
			   |   DiscardBits [13] | DiscardBits [12]
	                  |   DiscardBits [11] | DiscardBits [10]
      	                  |   DiscardBits [9] | DiscardBits [8]
	                  |   DiscardBits [7] | DiscardBits [6]
			   |   DiscardBits [5] | DiscardBits [4]
			   |   DiscardBits [3] | DiscardBits [2]
			   |   DiscardBits [1] | DiscardBits [0] ;  
			   
endmodule
