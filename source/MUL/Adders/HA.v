`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:20 07/15/2020 
// Design Name: 
// Module Name:    HA 
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
module HA( A , B , Sum , Cout 
    );
	
	input A , B ;
	output Sum , Cout ;
	
	assign Sum = A ^ B ,
			 Cout = A & B ;

endmodule
