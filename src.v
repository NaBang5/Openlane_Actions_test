module top(
  input [5:0] F,
  input [5:0] G,
  output[11:0] T
  );

wire N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25;
wire [5:0] B,C,D,E,H,I;
wire [11:0] RA,RB,RC,RD;
wire [11:0] R;

mux2a1 Z0(
    .B(F),
	.A(6'd0),
	.s0(G[0]),
	.F(B)
	);
	
mux2a1 Z1(
    .B(F),
	.A(6'd0),
	.s0(G[1]),
	.F(C)
	);
	
mux2a1 Z2(
    .B(F),
	.A(6'd0),
	.s0(G[2]),
	.F(D)
	);
mux2a1 Z3(
    .B(F),
	.A(6'd0),
	.s0(G[3]),
	.F(E)
	);

mux2a1 Z4(
    .B(F),
	.A(6'd0),
	.s0(G[4]),
	.F(H)
	);
	
mux2a1 Z5(
    .B(F),
	.A(6'd0),
	.s0(G[5]),
	.F(I)
	);

sum_half M0(
	.A(B[1]),
	.B(C[0]),
	.S(RA[1]),
	.Cout(N1)
	);

sum_full M1(
	.A(B[2]),
	.B(C[1]),
	.Cin(N1),
	.S(RA[2]),
	.Cout(N2)
	);
	
sum_full M2(
	.A(B[3]),
	.B(C[2]),
	.Cin(N2),
	.S(RA[3]),
	.Cout(N3)
	);

sum_full M3(
	.A(B[4]),
	.B(C[3]),
	.Cin(N3),
	.S(RA[4]),
	.Cout(N4)
	);

sum_full M4(
	.A(B[5]),
	.B(C[4]),
	.Cin(N4),
	.S(RA[5]),
	.Cout(N5)
	);

sum_half M5(
	.A(C[5]),
	.B(N5),
	.S(RA[6]),
	.Cout(RA[7])
	);	
	
sum_half M6(
	.A(RA[2]),
	.B(D[0]),
	.S(RB[2]),
	.Cout(N6)
	);

sum_full M7(
	.A(RA[3]),
	.B(D[1]),
	.Cin(N6),
	.S(RB[3]),
	.Cout(N7)
	);
	
sum_full M8(
	.A(RA[4]),
	.B(D[2]),
	.Cin(N7),
	.S(RB[4]),
	.Cout(N8)
	);

sum_full M9(
	.A(RA[5]),
	.B(D[3]),
	.Cin(N8),
	.S(RB[5]),
	.Cout(N9)
	);

sum_full M10(
	.A(RA[6]),
	.B(D[4]),
	.Cin(N9),
	.S(RB[6]),
	.Cout(N10)
	);

sum_full M11(
	.A(D[5]),
	.B(RA[7]),
	.Cin(N10),
	.S(RB[7]),
	.Cout(RB[8])
	);
	
sum_half M12(
	.A(RB[3]),
	.B(E[0]),
	.S(RC[3]),
	.Cout(N11)
	);

sum_full M13(
	.A(RB[4]),
	.B(E[1]),
	.Cin(N11),
	.S(RC[4]),
	.Cout(N12)
	);
	
sum_full M14(
	.A(RB[5]),
	.B(E[2]),
	.Cin(N12),
	.S(RC[5]),
	.Cout(N13)
	);

sum_full M15(
	.A(RB[6]),
	.B(E[3]),
	.Cin(N13),
	.S(RC[6]),
	.Cout(N14)
	);

sum_full M16(
	.A(RB[7]),
	.B(E[4]),
	.Cin(N14),
	.S(RC[7]),
	.Cout(N15)
	);

sum_full M17(
	.A(RB[8]),
	.B(E[5]),
	.Cin(N15),
	.S(RC[8]),
	.Cout(RC[9])
	);
	
sum_half M18(
	.A(RC[4]),
	.B(H[0]),
	.S(RD[4]),
	.Cout(N16)
	);

sum_full M19(
	.A(RC[5]),
	.B(H[1]),
	.Cin(N16),
	.S(RD[5]),
	.Cout(N17)
	);
	
sum_full M20(
	.A(RC[6]),
	.B(H[2]),
	.Cin(N17),
	.S(RD[6]),
	.Cout(N18)
	);

sum_full M21(
	.A(RC[7]),
	.B(H[3]),
	.Cin(N18),
	.S(RD[7]),
	.Cout(N19)
	);

sum_full M22(
	.A(RC[8]),
	.B(H[4]),
	.Cin(N19),
	.S(RD[8]),
	.Cout(N20)
	);

sum_full M23(
	.A(RC[9]),
	.B(H[5]),
	.Cin(N20),
	.S(RD[9]),
	.Cout(RD[10])
	);
	
sum_half M24(
	.A(RD[5]),
	.B(I[0]),
	.S(R[5]),
	.Cout(N21)
	);

sum_full M25(
	.A(RD[6]),
	.B(I[1]),
	.Cin(N21),
	.S(R[6]),
	.Cout(N22)
	);
	
sum_full M26(
	.A(RD[7]),
	.B(I[2]),
	.Cin(N22),
	.S(R[7]),
	.Cout(N23)
	);

sum_full M27(
	.A(RD[8]),
	.B(I[3]),
	.Cin(N23),
	.S(R[8]),
	.Cout(N24)
	);

sum_full M28(
	.A(RD[9]),
	.B(I[4]),
	.Cin(N24),
	.S(R[9]),
	.Cout(N25)
	);

sum_full M29(
	.A(RD[10]),
	.B(I[5]),
	.Cin(N25),
	.S(R[10]),
	.Cout(R[11])
	);

assign T={R[11],R[10],R[9],R[8],R[7],R[6],R[5],RD[4],RC[3],RB[2],RA[1],B[0]};


endmodule
