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
	
	reg [ 31 : 0 ]  Expected [ 0 : 499999 ] ;
	reg [ 31 : 0 ] Operand1File [ 0 : 499999 ] ;
	reg [ 31 : 0 ] Operand2File [ 0 : 499999 ] ;
	reg [ 31 : 0 ] OperationsFile [ 0 : 499999 ] ;
	integer Resultsfile ;
	integer counter , outc ;
	integer numR , numM , numD ;
	

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
		outc = 0;
		$readmemb("expected",Expected);
		Resultsfile  = $fopen("Results");
		$readmemb("Operand1", Operand1File );
		$readmemb("Operand2", Operand2File);
		$readmemh("Operations" , OperationsFile);
		numR = 0 ; // number of rounding error outputs
		numM = 0 ; // number of Matched outputs
		numD = 0 ; // number of DisMatch outputs
		
		// Wait 100 ns for global reset to finish
		#100;
		
		for ( counter = 0 ; counter < 500000 ; counter = counter + 1 ) 
			begin 
				Operand1 = Operand1File[counter] ; 
				Operand2 = Operand2File[counter] ;  
				Operation = OperationsFile[counter]; // mul
				#100; 
			end
		
		// Add stimulus here
		
		#800; 
		
		$fdisplay( Resultsfile ,"Number of Rounding Errors = %d " , numR ) ;
		$fdisplay( Resultsfile ,"Number of Matched Outputs = %d " , numM ) ;
		$fdisplay( Resultsfile ,"Number of Dismatched Outputs = %d" , numD ) ;
		
		$finish;

	end
	
	always 
		begin 
			#50;
			CLK = ~ CLK ;
		end
		
	always @(Result) 
		begin 
			if ( Result === Expected[outc] )
				begin 
					$fdisplay( Resultsfile , "Output Matched" ) ;
					numM = numM + 1 ;
				end
			else 
				begin 
					if ( (Result - Expected[outc]) === 1 || (Result - Expected[outc]) === (-1) ) 
						begin
							$fdisplay( Resultsfile ,"Rounding Error" ) ;
							numR = numR + 1 ;
						end
					else 
						begin
							$fdisplay( Resultsfile , "Output Dismatch %b -- %b " , Result , Expected[outc] ) ;
							numD = numD + 1 ;
						end
				end
			outc = outc + 1 ;
		end
      
endmodule

