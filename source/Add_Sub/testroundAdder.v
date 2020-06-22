`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:40 06/21/2020
// Design Name:   roundAdder
// Module Name:   C:/Users/Tefa/Desktop/FPU/FPUCode/roundAdder/testroundAdder.v
// Project Name:  roundAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: roundAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testroundAdder;

	// Inputs
	reg round;
	reg [7:0] InData;

	// Outputs
	wire [7:0] RoundedData;
	wire Overflow;
	
	integer counter ;
	integer ResultsFile ;
	
	

	// Instantiate the Unit Under Test (UUT)
	roundAdder uut (
		.round(round), 
		.InData(InData), 
		.RoundedData(RoundedData), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		round = 0;
		InData = 0;
		counter = 0 ;
		ResultsFile = $fopen("Outputs.txt") ;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		// first case : will not rounded 
		round = 0 ; 
		InData = 8'b11111111 ;
		
		#50;
		// second case : will rounded with overflow 
		round  = 1 ;
		
		#50;
		//third case : will be rounded without overflow
		InData = 8'b00001011 ;
	end
	
	always @(RoundedData or Overflow ) 
		begin 
			$fdisplay( ResultsFile , " Case %d : Overflow = %b , result = %b" , counter , Overflow , RoundedData ) ;
			counter = counter + 1 ;
		end
      
endmodule

