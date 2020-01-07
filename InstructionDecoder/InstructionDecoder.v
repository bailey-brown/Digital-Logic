module InstructionDecoder (
	input w,x,y,z,
	output reg s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
	always @ (w,x,y,z) begin
		case ({w,x,y,z})
			4'b0000: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00000000001; end 
			4'b0001: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00000000010;  end
			4'b0010: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00000000100;  end 
			4'b0011: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00000001000;  end
			4'b0100: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00000010000; end
			4'b0110: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00000100000;  end
			4'b0111: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00001000000;  end
			4'b1000: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00010000000;  end
			4'b1100: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b00100000000;  end 
			4'b1001: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b01000000000;  end
			4'b1111: begin{s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = 11'b10000000000;  end
		endcase
	end
endmodule
