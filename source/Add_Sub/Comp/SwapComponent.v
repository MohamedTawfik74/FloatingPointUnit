`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: muhamedtawfik@outlook.com
// Engineer: Mohamed Gamal Tawfik 
// 
// Create Date:    18:22:28 06/21/2020 
// Design Name: 
// Module Name:    SwapComponent 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//              to detect the required mantissa to be alignment in the next step.
//
//////////////////////////////////////////////////////////////////////////////////
module SwapComponent( Mantissa1 , Mantissa2 , Sel , Output1 , Output2
    );
	 
	 parameter DataSize = 8 ; // size of mantissa 
	 
	 input [ DataSize - 1 : 0 ] Mantissa1 , Mantissa2 ; // hold the both Mantissas
	 input Sel ; // to detect the outputs
	 
	 output [ DataSize - 1 : 0 ] Output1 ; // the output will be aligned
	 reg [ DataSize - 1 : 0 ] Output1 ;
	 
	 output [ DataSize - 1 : 0 ] Output2 ; // the output mantisa with the greater 
	 reg [ DataSize - 1 : 0 ] Output2 ;
	 
	 always @( Sel or Mantissa1 or Mantissa2 )
		begin 
			if ( Sel == 1'b1 )
				begin 
					Output1 = Mantissa2 ;
					Output2 = Mantissa1 ;
				end 
			else 
				begin
					Output1 = Mantissa1 ;
					Output2 = Mantissa2 ;
				end
	   end
	 
endmodule
