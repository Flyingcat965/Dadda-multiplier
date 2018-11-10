module processing_block(
	input [7:0][7:0] P,
	input [15:0] M,
	output [16:0] MAC);
	
	wire [47:0] fs,fc;	//wires for intermediate full adders & carry
	wire [7:0] hs,hc; 	//wires for intermediate half adder & carry

	genvar i; 		//generate variable for use in generate loop

	//for the connections given in the code, refer to the file 
	//"Dadda design.pdf" attached 
	
	//level 1 design	

	half_adder ha0(.a(P[4][1]),.b(P[5][0]),.sum(hs[0]),.carry(hc[0]));
	
	half_adder ha1(.a(P[2][4]),.b(P[3][3]),.sum(hs[1]),.carry(hc[1]));
	full_adder fa0(.a(P[4][2]),.b(P[5][1]),.c_in(P[6][0]),.sum(fs[0]),.carry(fc[0]));

	full_adder fa2(.a(P[5][2]),.b(P[6][1]),.c_in(P[7][0]),.sum(fs[2]),.carry(fc[2]));
	full_adder fa1(.a(P[2][5]),.b(P[3][4]),.c_in(P[4][3]),.sum(fs[1]),.carry(fc[1]));
	half_adder ha2(.a(P[0][7]),.b(P[1][6]),.sum(hs[2]),.carry(hc[2]));
	
	full_adder fa4(.a(P[5][3]),.b(P[6][2]),.c_in(P[7][1]),.sum(fs[4]),.carry(fc[4]));
	full_adder fa3(.a(P[2][6]),.b(P[3][5]),.c_in(P[4][4]),.sum(fs[3]),.carry(fc[3]));
	half_adder ha2(.a(M[8]),.b(P[1][7]),.sum(hs[2]),.carry(hc[2]));
	
	
	full_adder fa6(.a(P[5][4]),.b(P[6][3]),.c_in(P[7][2]),.sum(fs[6]),.carry(fc[6]));
	full_adder fa5(.a(P[2][7]),.b(P[3][6]),.c_in(P[4][5]),.sum(fs[5]),.carry(fc[5]));
	
	full_adder fa7(.a(P[5][5]),.b(P[6][4]),.c_in(P[7][3]),.sum(fs[7]),.carry(fc[7]));

	//level 2 adders
	half_adder ha3(.a(P[3][0]),.b(P[2][1]),.sum(hs[3]),.carry(hc[3]));
	
	half_adder ha4(.a(P[0][4]),.b(P[1][3]),.sum(hs[4]),.carry(hc[4]));
	full_adder fa8(.a(P[2][2]),.b(P[3][1]),.c_in(P[4][0]),.sum(fs[8]),.carry(fc[8]));

	full_adder fa9(.a(hs[0]),.b(P[0][05]),.c_in(P[1][4]),.sum(fs[9]),.carry(fc[9]));
	full_adder fa10(.a(P[2][3]),.b(P[3][2]),.c_in(M[5]),.sum(fs[10]),.carry(fc[10]));

	full_adder fa11(.a(fs[0]),.b(hc[0]),.c_in(hs[1]),.sum(fs[11]),.carry(fc[11]));
	full_adder fa11(.a(P[0][6]),.b(M[6]),.c_in(P[1][5]),.sum(fs[11]),.carry(fc[11]));

	full_adder fa12(.a(fs[1]),.b(fc[0]),.c_in(fs[2]),.sum(fs[12]),.carry(fc[12]));
	full_adder fa13(.a(hc[1]),.b(hs[2]),.c_in(M[7]),.sum(fs[13]),.carry(fc[13]));
	
	full_adder fa14(.a(fs[3]),.b(fc[1]),.c_in(fs[4]),.sum(fs[14]),.carry(fc[14]));
	full_adder fa15(.a(fc[2]),.b(hs[3]),.c_in(hc[2]),.sum(fs[15]),.carry(fc[15]));

	full_adder fa16(.a(fs[5]),.b(fc[3]),.c_in(fs[6]),.sum(fs[16]),.carry(fc[16]));
	full_adder fa17(.a(fc[4]),.b(M[9]),.c_in(hc[3]),.sum(fs[17]),.carry(fc[17]));

	full_adder fa18(.a(M[10]),.b(fc[5]),.c_in(P[3][7]),.sum(fs[18]),.carry(fc[18]));
	full_adder fa19(.a(fc[6]),.b(fs[7]),.c_in(P[4][6]),.sum(fs[19]),.carry(fc[19]));

	full_adder fa20(.a(M[11]]),.b(P[4][7]),.c_in(P[5][6]),.sum(fs[20]),.carry(fc[20]));
	full_adder fa21(.a(P[6][5]),.b(P[7][4]),.c_in(fc[7]),.sum(fs[21]),.carry(fc[21]));

	full_adder fa23(.a(P[6][5]),.b(P[7][4]),.c_in(P[4][6]),.sum(fs[23]),.carry(fc[23]));
endmodule

