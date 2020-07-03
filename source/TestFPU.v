`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:48 06/30/2020
// Design Name:   FPU
// Module Name:   C:/Users/Tefa/Desktop/FPU/FPUCode/FPU/TestFPU.v
// Project Name:  FPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestFPU;

	// Inputs
	reg [31:0] Operand1;
	reg [31:0] Operand2;
	reg Operation;
	reg CLK;

	// Outputs
	wire [31:0] Result;

	// Instantiate the Unit Under Test (UUT)
	FPU uut (
		.Operand1(Operand1), 
		.Operand2(Operand2), 
		.Operation(Operation), 
		.Result(Result), 
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		Operand1 = 0; // 59164.9716
		Operand2 = 0; // 791.459
		Operation = 0; //+
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		Operand1 = 32'b01000110101111111100101000001010 ; // 12.5
		Operand2 = 32'b01000010010010111110101110000101 ;  
		Operation = 0; // add
		 
		// Add stimulus here

	end
	
	always 
		begin 
			#50;
			CLK = ~ CLK ;
		end
		
	always @(Result) 
		begin 
			if ( Result === 32'b01000110110000000011000000000000 )
				$display( " Output Matched " ) ;
			else 
				$display( " Output dismatch " ) ;
		end
      
endmodule

