`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:09 07/15/2020 
// Design Name: 
// Module Name:    FA 
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
module FA( A , B , Cin , Cout , Sum 
    );
	 
	 input A , B , Cin ;
	 output Sum , Cout ; 

	 wire InternalSum , InternalCarry1 , InternalCarry2 ;
	 
	 HA First (
    .A(A), 
    .B(B), 
    .Sum(InternalSum), 
    .Cout(InternalCarry1)
    );
	 
	  HA Second (
    .A(Cin), 
    .B(InternalSum ), 
    .Sum(Sum), 
    .Cout(InternalCarry2)
    );
	 
	 assign Cout = InternalCarry1 | InternalCarry2 ;



endmodule
