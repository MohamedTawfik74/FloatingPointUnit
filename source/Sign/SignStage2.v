`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:16 07/22/2020 
// Design Name: 
// Module Name:    SignStage2 
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
module SignStage2( SignOperandX , SignOperandY , EffOperation , ExclusiveSign , DSign , DZF , CMP1 , 
				ADDSign
    );
	 
	 
	 input SignOperandX ; // hold the sign of first operand
	 input SignOperandY ; // hold the sign of second operand
	 
	 input EffOperation ; //  hold the effictive operation 
	 input ExclusiveSign ; // hold the MUL/DIv sign define if the operand have same or different signs
	 
	 input DSign ; //  the inverted sign of the exponent difference 0 -> Ey > Ex , 1 -> Ex >= Ey
	 input DZF ; // the zero flag of the exponent difference : Ex = Ey
	 
	 input CMP1 ; // define if the My > Mx
	 
	 output ADDSign ; // hold the final sign of the result from sub/add circuit

	// Internal Nets
	
	wire ISignOperandY ; // inerted y sign if the effictive operation is sub
	wire RealSignOperandY ; // hold the effictive sign of operand 2 the sams sign if the effective operation is ADD
	
	wire DependSel ; // control sel to decide the sign for the dependent case on the larger operand
	wire DependSign ; // the result sign for the dependent case on the larger operand
	
	wire PartSel ; // the control sign for the final sign of the add/sub circuit
	
	Mux_2_1#(1) YSignMux (
    .Choice0(SignOperandY), 
    .Choice1(ISignOperandY), 
    .Sel(EffOperation), 
    .Output(RealSignOperandY)
    );
	 
	 Mux_2_1#(1) DependMux (
    .Choice0(SignOperandX), 
    .Choice1(RealSignOperandY), 
    .Sel(DependSel), 
    .Output(DependSign)
    );
	 
	 Mux_2_1#(1) PartMux (
    .Choice0(SignOperandX), 
    .Choice1(DependSign), 
    .Sel(PartSel), 
    .Output(ADDSign)
    );
	 
	 assign ISignOperandY = ~ SignOperandY ;
	 
	 assign PartSel =( EffOperation ^ ExclusiveSign ) ;
	 
	 assign DependSel = (DSign) + DZF & CMP1 ;

endmodule
