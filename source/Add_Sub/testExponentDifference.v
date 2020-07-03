`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:06:23 06/21/2020
// Design Name:   ExponentDifference
// Module Name:   C:/Users/Tefa/Desktop/FPU/FPUCode/ExponentDifference/testExponentDifference.v
// Project Name:  ExponentDifference
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ExponentDifference
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testExponentDifference;

	// Inputs
	reg [7:0] Exponent1;
	reg [7:0] Exponent2;

	// Outputs
	wire [7:0] Difference;
	wire Sign;

	// Instantiate the Unit Under Test (UUT)
	ExponentDifference uut (
		.Exponent1(Exponent1), 
		.Exponent2(Exponent2), 
		.Difference(Difference), 
		.Sign(Sign)
	);

	initial begin
		// Initialize Inputs
		Exponent1 = 0;
		Exponent2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		Exponent1 = 4;
		Exponent2 = 6;

		#50
		
		Exponent1 = 6;
		Exponent2 = 4;
		

	end
      
endmodule

