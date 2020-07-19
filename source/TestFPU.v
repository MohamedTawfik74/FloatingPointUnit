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
	reg [31:0] Operand1 ;
	reg [31:0] Operand2;
	reg [ 1:0] Operation;
	reg CLK;

	// Outputs
	wire [31:0] Result;
	
	reg [ 31 : 0 ]  Expected [ 0 : 9 ] ;
	reg [ 31 : 0 ] Operand1File [ 0 : 9 ] ;
	reg [ 31 : 0 ] Operand2File [ 0 : 9 ] ;
	reg [ 31 : 0 ] OperationsFile [ 0 : 9 ] ;
	integer Resultsfile ;
	integer num , counter , outc ;
	
	integer bypass ;
	

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
		outc = 0 ;
		bypass = 0; 
		$readmemb("expected",Expected);
		Resultsfile  = $fopen("Results");
		$readmemb("Operand1", Operand1File );
		$readmemb("Operand2", Operand2File);
		$readmemh("Operations" , OperationsFile);

		// Wait 100 ns for global reset to finish
		#100;
		
		for ( counter = 0 ; counter < 10 ; counter = counter + 1 ) 
			begin 
				Operand1 = Operand1File[counter] ; 
				Operand2 = Operand2File[counter] ;  
				Operation = OperationsFile[counter]; // mul
				#100; 
			end
		
		// Add stimulus here
		#800; 
		
		$finish;

	end
	
	always 
		begin 
			#50;
			CLK = ~ CLK ;
		end
		
	always @(Result) 
		begin 
		if ( bypass !== 0 )
		begin
			if ( Result === Expected[outc] )
				$fdisplay( Resultsfile , "Output Matched" ) ;
			else 
				begin 
					if ( (Result - Expected[outc]) === 1 || (Result - Expected[outc]) === (-1) ) 
						$fdisplay( Resultsfile ,"Rounding Error" ) ;
					else 
						$fdisplay( Resultsfile , "Output Dismatch" ) ;
				end
			outc = outc + 1 ;
		end
		else 
			bypass = 1 ;
		end
      
endmodule

