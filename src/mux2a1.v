//Mux 2 a 1

module mux2a1(
	input [5:0] A,
	input [5:0] B,
	input s0,
	output [5:0] F
	);

assign F = s0 ? B : A;

endmodule
