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
	
	integer j ;
	integer roundError ;
	
	reg [ 31 : 0 ] Expected = 32'b00111111100000000000000000000000 ;

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
		roundError = 1 ; 

		// Wait 100 ns for global reset to finish
		#100;
       
		Operand1 = 32'b01000000100000000000000000000000 ;
		Operand2 = 32'b00111110100000000000000000000000 ;  
		Operation = 2'b10; 
		 
		// Add stimulus here
		#500;
		//$finish ;

	end
	
	always // generate clock
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
					roundError = 1 ;
					for ( j = 31 ; j > 0 ; j -- )
						begin 
							if ( Result[j] !== Expected[i] )
								roundError = 0 ;
							else ;
						end 
					if ( roundError === 1 ) 
						$display( "Rounding Error" ) ;
					else 
						$display( "Output dismatch" ) ; 
				end
				
		end
      
endmodule

