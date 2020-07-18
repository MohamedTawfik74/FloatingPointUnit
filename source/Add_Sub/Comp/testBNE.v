`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:24:05 06/27/2020
// Design Name:   BNE
// Module Name:   C:/Users/Tefa/Desktop/FPU/FPUCode/BNE/testBNE.v
// Project Name:  BNE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BNE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testBNE;

	// Inputs
	reg [5:0] AZs;

	// Outputs
	wire [2:0] Shifting;
	
	integer i ;

	// Instantiate the Unit Under Test (UUT)
	BNE uut (
		.Shifting(Shifting), 
		.AZs(AZs)
	);

	initial begin
		// Initialize Inputs
		AZs = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		for ( i = 0 ; i < 64 ; i = i + 1 )
			begin 
				AZs = i ;
				#40;
			end
		// Add stimulus here

	end
	
	always @(AZs) 
	begin 
		#20;
		$display(" For i = %b the shifting is %b " , AZs , Shifting) ;
   end
endmodule

