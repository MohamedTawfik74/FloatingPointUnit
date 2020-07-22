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
	reg [ 1 : 0 ] Operation;
	reg CLK;

	// Outputs
	wire [31:0] Result;
	
	integer Expected ;

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
		CLK = 0;
		 

		// Wait 100 ns for global reset to finish
		#100;
       
		Operand1 = 32'b01000101000111111011001100010001 ; 
		Operand2 = 32'b01000101110101011011101010011111 ;  
		Operation = 2'b10; // mul
		Expected = 32'b01001011100001010101010001101000 ; 
		// Add stimulus here

	end
	
	always 
		begin 
			#50;
			CLK = ~ CLK ;
		end
		
	always @(Result) 
		begin 
			if ( Result === Expected )
				$display( "Output Matched" ) ;
			else 
				begin 
					if ( (Result - Expected) === 1 || (Result - Expected) === (-1) ) 
						$display( "Rounding Error" ) ;
					else 
						$display( "Output Dismatch" ) ;
				end
		end
      
endmodule

