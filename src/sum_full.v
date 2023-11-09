 //Sumador completo

module sum_full(
	input A,
	input B,
	input Cin,
	output S,
	output Cout
	);

assign S = A ^ B ^ Cin;
assign Cout = (A & B) | (Cin & A) | (Cin & B);

endmodule
