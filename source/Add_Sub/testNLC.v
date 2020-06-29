`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:40:35 06/26/2020
// Design Name:   NLC
// Module Name:   C:/Users/Tefa/Desktop/FPU/FPUCode/NLC/testNLC.v
// Project Name:  NLC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NLC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testNLC;

	// Inputs
	reg [5:0] ZAs;

	// Outputs
	wire allZeros;
	wire [2:0] NumberofZeros;

	integer i ;
	// Instantiate the Unit Under Test (UUT)
	NLC uut (
		.ZAs(ZAs), 
		.allZeros(allZeros), 
		.NumberofZeros(NumberofZeros)
	);

	initial begin
		// Initialize Inputs
		ZAs = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
		
			// Add stimulus here
		for ( i = 0 ; i < 64 ; i = i + 1 )
		begin
			ZAs = i ;
			#30;
		end
        
	

	end
	
	always @( NumberofZeros or allZeros ) 
		begin 
			$display(" %b -- %d -- %d" , ZAs , NumberofZeros , allZeros ) ;
      end			
      
endmodule

