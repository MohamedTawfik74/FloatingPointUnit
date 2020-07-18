`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:23 06/28/2020
// Design Name:   LZC
// Module Name:   C:/Users/Tefa/Desktop/FPU/FPUCode/LZC/testLZC.v
// Project Name:  LZC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LZC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testLZC;

	// Inputs
	reg [24:1] AdderResult;

	// Outputs
	wire [4:0] Shifts;
	
	integer i ;

	// Instantiate the Unit Under Test (UUT)
	LZC uut (
		.AdderResult(AdderResult), 
		.Shifts(Shifts)
	);

	initial begin
		// Initialize Inputs
		AdderResult = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		for ( i = 0 ; i < 26 ; i = i + 1 )
			begin 
				AdderResult = (1<<i) ;
				#40;
				end
	end
      
		always @(Shifts)
			$display ( " %b -- %d " , AdderResult , Shifts ) ;
endmodule

