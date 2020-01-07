module Controller (
	input s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10, CLK, CLR,
	output reg c0,c1,c2,c3,c4,c5,c7,c8,c9,c10,c11,c12,c13,c14);
	reg [4:0] state;
	parameter A = 5'b00000, B = 5'b00001, C = 5'b00010, D = 5'b00011, E = 5'b00100, F = 5'b00101, G = 5'b00110, H = 5'b00111, I = 5'b01000, J = 5'b01001, K = 5'b01010,
				 L = 5'b01011, M = 5'b01100, N = 5'b01101, O = 5'b01110, P = 5'b01111, Q = 5'b10000, R = 5'b10001;
	always @ (negedge CLK, negedge CLR)
		if (CLR == 0) state <= A;
		else case (state)
			A: if (c0) state <= B; 
			B: if (c3) state <= C;
			C: if (c4) state <= D; 
			D: if (c4) state <= E;
			E: if (s5) state <= F; else if (s6) state <= G; else if (s7) state <= H; else if (s0) state <= I; else if (s1) state <= J; else if (s2) state <= K;
			F: if (c9) state <= B;
			G: if (c8) state <= B;
			H: if (c1) state <= B;
			
			I: if (c3) state <= L;
			L: if (c3) state <= M;
			M: if (c11) state <= B;
			
			J: if (c5) state <= N;
			N: if (c5) state <= O;
			O: if (c5) state <= B;
			
			K: if (c3) state <= P;
			P: if (c3) state <= Q;
			Q: if (c14) state <= R;
			R: if (c11) state <= B;
		endcase
	 always @ (state)
		case (state)
			A: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000000001;
			B: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000001000;
			C: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000010000;
			D: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000010000;
			E: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000001000100;
			F: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00001100000000;
			G: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000010000000;
			H: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000000010;
			I: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000011000;
			J: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000100000;
			K: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000011000;
			L: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000011000;
			M: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00011000000000;
			N: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000111000;
			O: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000111000;
			P: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00000000011000;
			Q: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b10000000000000;
			R: {c14,c13,c12,c11,c10,c9,c8,c7,c5,c4,c3,c2,c1,c0} = 14'b00010000000000;
		endcase
endmodule
