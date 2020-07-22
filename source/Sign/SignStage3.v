`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:57 07/22/2020 
// Design Name: 
// Module Name:    SignStage3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SignStage3( ADDSign , MULSign , AlgorSel ,  ResultSign 
    );
	 
	 input ADDSign , MULSign ;
	 input AlgorSel ;
	 output ResultSign ;
	 
	 Mux_2_1#(1) SignMux (
    .Choice0(ADDSign), 
    .Choice1(MULSign), 
    .Sel(AlgorSel), 
    .Output(ResultSign)
    );

endmodule
