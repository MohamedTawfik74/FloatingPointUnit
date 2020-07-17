// 
// Create Date:    19:33:20 06/19/2020 
// Design Name: 
// Module Name:    daddamul 
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
module DADDA8_MUL (A, B, Result
 );
input [7:0] A;
input [7:0] B;
output [15:0] Result; 

// First Stage
wire S11, C11, S12, C12, S13, C13, S14, C14, S15, C15, S16, C16;

HA HA11 ( .A(A[6] & B[0]), .B(A[5] & B[1]) , .Sum(S11), .Cout(C11));
FA FA12 ( .A(A[7] & B[0]), .B(A[6] & B[1]) , .Cin(A[5] & B[2]), .Sum(S12), .Cout(C12));
HA HA13 ( .A(A[4] & B[3]), .B(A[3] & B[4]) , .Sum(S13), .Cout(C13));
FA FA14 ( .A(A[7] & B[1]), .B(A[6] & B[2]) , .Cin(A[5] & B[3]), .Sum(S14), .Cout(C14));
HA HA15 ( .A(A[4] & B[4]), .B(A[3] & B[5]) , .Sum(S15), .Cout(C15));
FA FA16 ( .A(A[7] & B[2]), .B(A[6] & B[3]) , .Cin(A[5] & B[4]), .Sum(S16), .Cout(C16));

// Second Stage

wire S21 ,C21, S22 ,C22, S23 ,C23, S24 ,C24, S25 ,C25, S26 ,C26, S27 ,C27, S28 ,C28;
wire S29 ,C29, S210 ,C210, S211 ,C211, S212 ,C212, S213 ,C213, S214 ,C214; 

HA HA21 ( .A(A[4] & B[0]), .B(A[3] & B[1]) , .Sum(S21), .Cout(C21));
FA FA22 ( .A(A[5] & B[0]), .B(A[4] & B[1]) , .Cin(A[3] & B[2]), .Sum(S22), .Cout(C22));
HA HA23 ( .A(A[2] & B[3]), .B(A[1] & B[4]) , .Sum(S23), .Cout(C23));
FA FA24 ( .A(S11), .B(A[4] & B[2]) , .Cin(A[3] & B[3]), .Sum(S24), .Cout(C24));

FA FA25 ( .A(A[2] & B[4]), .B(A[1] & B[5]) , .Cin(A[0] & B[6]), .Sum(S25), .Cout(C25));

FA FA26 ( .A(C11), .B(S12) , .Cin(S13), .Sum(S26), .Cout(C26));
FA FA27 ( .A(A[2] & B[5]), .B(A[1] & B[6]) , .Cin(A[0] & B[7]), .Sum(S27), .Cout(C27));
FA FA28 ( .A(C12), .B(C13) , .Cin(S14), .Sum(S28), .Cout(C28));
FA FA29 ( .A(S15), .B(A[2] & B[6]) , .Cin(A[1] & B[7]), .Sum(S29), .Cout(C29));
FA FA210 ( .A(C14), .B(C15) , .Cin(S16), .Sum(S210), .Cout(C210));
FA FA211 ( .A(A[4] & B[5]), .B(A[3] & B[6]) , .Cin(A[2] & B[7]), .Sum(S211), .Cout(C211));
FA FA212 ( .A(C16), .B(A[7] & B[3]) , .Cin(A[6] & B[4]), .Sum(S212), .Cout(C212));
FA FA213 ( .A(A[5] & B[5]), .B(A[4] & B[6]) , .Cin(A[3] & B[7]), .Sum(S213), .Cout(C213));

FA FA214 ( .A(A[7] & B[4]), .B(A[6] & B[5]) , .Cin(A[5] & B[6]), .Sum(S214), .Cout(C214));

//Third Stage

wire  S31 ,C31, S32 ,C32, S33 ,C33, S34 ,C34, S35 ,C35, S36 ,C36, S37 ,C37, S38 ,C38, S39 ,C39, S310 ,C310;

HA HA31 ( .A(A[3] & B[0]), .B(A[2] & B[1]) , .Sum(S31), .Cout(C31));
FA FA32 ( .A(S21), .B(A[2] & B[2]) , .Cin(A[1] & B[3]), .Sum(S32), .Cout(C32));
FA FA33 ( .A(C21), .B(S22) , .Cin(S23), .Sum(S33), .Cout(C33));
FA FA34 ( .A(C22), .B(C23) , .Cin(S24), .Sum(S34), .Cout(C34));
FA FA35 ( .A(C24), .B(C25) , .Cin(S26), .Sum(S35), .Cout(C35));
FA FA36 ( .A(C26), .B(C27) , .Cin(S28), .Sum(S36), .Cout(C36));
FA FA37 ( .A(C28), .B(C29) , .Cin(S210), .Sum(S37), .Cout(C37));
FA FA38 ( .A(C210), .B(C211) , .Cin(S212), .Sum(S38), .Cout(C38));
FA FA39 ( .A(C212), .B(C213) , .Cin(S214), .Sum(S39), .Cout(C39));
FA FA310 ( .A(A[7] & B[5]), .B(A[6] & B[6]), .Cin(C214), .Sum(S310), .Cout(C310));


//Fourth Stage

wire  S41 ,C41, S42 ,C42, S43 ,C43, S44 ,C44, S45 ,C45, S46 ,C46, S47 ,C47, S48 ,C48, S49 ,C49, S410 ,C410, S411 ,C411, S412 ,C412;

HA HA41 ( .A(A[2] & B[0]), .B(A[1] & B[1]) , .Sum(S41), .Cout(C41));
FA FA42 ( .A(S31), .B(A[1] & B[2]) , .Cin(A[0] & B[3]), .Sum(S42), .Cout(C42));
FA FA43 ( .A(C31), .B(S32) , .Cin(A[0] & B[4]), .Sum(S43), .Cout(C43));
FA FA44 ( .A(C32), .B(S33) , .Cin(A[0] & B[5]), .Sum(S44), .Cout(C44));
FA FA45 ( .A(C33), .B(S34) , .Cin(S25), .Sum(S45), .Cout(C45));
FA FA46 ( .A(C34), .B(S35) , .Cin(S27), .Sum(S46), .Cout(C46));
FA FA47 ( .A(C35), .B(S36) , .Cin(S29), .Sum(S47), .Cout(C47));
FA FA48 ( .A(C36), .B(S37) , .Cin(S211), .Sum(S48), .Cout(C48));
FA FA49 ( .A(C37), .B(S38) , .Cin(S213), .Sum(S49), .Cout(C49));
FA FA410 ( .A(C38), .B(S39) , .Cin(A[4] & B[7]), .Sum(S410), .Cout(C410));
FA FA411 ( .A(C39), .B(S310) , .Cin(A[5] & B[7]), .Sum(S411), .Cout(C411));
FA FA412 ( .A(C310), .B(A[7] & B[6]) , .Cin(A[6] & B[7]), .Sum(S412), .Cout(C412));


//Final stage of addition

wire [14:0] Ax;
wire [14:0] Bx;

wire X00, X01, X10, X20, X77;
assign X00 = A[0] & B[0];
assign X01 = A[1] & B[0];
assign X10 = A[0] & B[1];
assign X20 = A[0] & B[2];
assign X77 = A[7] & B[7];


assign Ax = {C412, C411, C410, C49, C48, C47, C46, C45, C44, C43, C42, C41, S41, X01, X00};
assign Bx = {X77, S412, S411, S410, S49, S48, S47, S46, S45, S44, S43, S42, X20, X10, 1'b0};

assign Result = Ax + Bx;


endmodule