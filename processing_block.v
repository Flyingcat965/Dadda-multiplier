module processing_block(
	input [7:0][7:0] P,
	input [15:0] M,
	output [1:0][15:0] PRE); //pre for pre result
	
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
	half_adder ha3(.a(M[8]),.b(P[1][7]),.sum(hs[3]),.carry(hc[3]));
	
	
	full_adder fa6(.a(P[5][4]),.b(P[6][3]),.c_in(P[7][2]),.sum(fs[6]),.carry(fc[6]));
	full_adder fa5(.a(P[2][7]),.b(P[3][6]),.c_in(P[4][5]),.sum(fs[5]),.carry(fc[5]));
	
	full_adder fa7(.a(P[5][5]),.b(P[6][4]),.c_in(P[7][3]),.sum(fs[7]),.carry(fc[7]));

	//level 2 adders
	half_adder ha4(.a(P[3][0]),.b(P[2][1]),.sum(hs[4]),.carry(hc[4]));
	
	half_adder ha5(.a(P[0][4]),.b(P[1][3]),.sum(hs[5]),.carry(hc[5]));
	full_adder fa8(.a(P[2][2]),.b(P[3][1]),.c_in(P[4][0]),.sum(fs[8]),.carry(fc[8]));

	full_adder fa9(.a(hs[0]),.b(P[0][05]),.c_in(P[1][4]),.sum(fs[9]),.carry(fc[9]));
	full_adder fa10(.a(P[2][3]),.b(P[3][2]),.c_in(M[5]),.sum(fs[10]),.carry(fc[10]));

	full_adder fa11(.a(fs[0]),.b(hc[0]),.c_in(hs[1]),.sum(fs[11]),.carry(fc[11]));
	full_adder fa12(.a(P[0][6]),.b(M[6]),.c_in(P[1][5]),.sum(fs[12]),.carry(fc[12]));

	full_adder fa13(.a(fs[1]),.b(fc[0]),.c_in(fs[2]),.sum(fs[13]),.carry(fc[13]));
	full_adder fa14(.a(hc[1]),.b(hs[2]),.c_in(M[7]),.sum(fs[14]),.carry(fc[14]));
	
	full_adder fa15(.a(fs[3]),.b(fc[1]),.c_in(fs[4]),.sum(fs[15]),.carry(fc[15]));
	full_adder fa16(.a(fc[2]),.b(hs[3]),.c_in(hc[2]),.sum(fs[16]),.carry(fc[16]));

	full_adder fa17(.a(fs[5]),.b(fc[3]),.c_in(fs[6]),.sum(fs[17]),.carry(fc[17]));
	full_adder fa18(.a(fc[4]),.b(M[9]),.c_in(hc[3]),.sum(fs[18]),.carry(fc[18]));

	full_adder fa19(.a(M[10]),.b(fc[5]),.c_in(P[3][7]),.sum(fs[19]),.carry(fc[19]));
	full_adder fa20(.a(fc[6]),.b(fs[7]),.c_in(P[4][6]),.sum(fs[20]),.carry(fc[20]));

	full_adder fa21(.a(M[11]),.b(P[4][7]),.c_in(P[5][6]),.sum(fs[21]),.carry(fc[21]));
	full_adder fa22(.a(P[6][5]),.b(P[7][4]),.c_in(fc[7]),.sum(fs[22]),.carry(fc[22]));

	full_adder fa23(.a(P[5][7]),.b(P[6][6]),.c_in(P[7][5]),.sum(fs[23]),.carry(fc[23]));

	//level 3
	
	
	half_adder ha6(.a(P[1][1]),.b(P[2][0]),.sum(hs[6]),.carry(hc[6]));
	
	full_adder fa24(.a(M[3]),.b(P[0][3]),.c_in(P[1][2]),.sum(fs[24]),.carry(fc[24]));
	full_adder fa25(.a(hc[4]),.b(hs[5]),.c_in(M[4]),.sum(fs[25]),.carry(fc[25]));
	full_adder fa26(.a(fc[8]),.b(fs[10]),.c_in(hc[5]),.sum(fs[26]),.carry(fc[26]));
	
	full_adder fa27(.a(fc[9]),.b(fs[12]),.c_in(fc[10]),.sum(fs[27]),.carry(fc[27]));
	full_adder fa28(.a(fc[11]),.b(fs[14]),.c_in(fc[12]),.sum(fs[28]),.carry(fc[28]));
	full_adder fa29(.a(fc[13]),.b(fs[16]),.c_in(fc[14]),.sum(fs[29]),.carry(fc[29]));
	full_adder fa30(.a(fc[15]),.b(fs[18]),.c_in(fc[16]),.sum(fs[30]),.carry(fc[30]));
	full_adder fa31(.a(fc[17]),.b(fs[20]),.c_in(fc[18]),.sum(fs[31]),.carry(fc[31]));
	full_adder fa32(.a(fc[19]),.b(fs[22]),.c_in(fc[20]),.sum(fs[32]),.carry(fc[32]));
	full_adder fa33(.a(fc[21]),.b(M[12]),.c_in(fc[22]),.sum(fs[33]),.carry(fc[33]));
	full_adder fa34(.a(M[13]),.b(P[6][7]),.c_in(P[7][6]),.sum(fs[34]),.carry(fc[34]));
		
	//level 4
	
	//i need to jus pass through some wires 
	and pass1(PRE[1][1],M[1],1'b1);
	and pass2(PRE[1][0],P[0][0],1'b1);

	and pass1(PRE[0][0],M[0],1'b1);
	and pass2(PRE[0][15],M[15],1'b1);
	
	half_adder ha7(.a(P[0][1]),.b(P[1][0]),.sum(PRE[0][1]),.carry(PRE[1][2]));
	
	full_adder fa35(.a(hs[6]),.b(M[2]),.c_in(P[0][2]),.sum(PRE[0][2]),.carry(PRE[1][3]));
	
	full_adder fa36(.a(fs[24]),.b(hc[6]),.c_in(hs[4]),.sum(PRE[0][3]),.carry(PRE[1][4]));
	full_adder fa37(.a(fs[25]),.b(fc[24]),.c_in(fs[8]),.sum(PRE[0][4]),.carry(PRE[1][5]));
	full_adder fa38(.a(fs[26]),.b(fc[25]),.c_in(fs[9]),.sum(PRE[0][5]),.carry(PRE[1][6]));
	full_adder fa39(.a(fs[27]),.b(fc[26]),.c_in(fs[11]),.sum(PRE[0][6]),.carry(PRE[1][7]));
	full_adder fa40(.a(fs[28]),.b(fc[27]),.c_in(fs[13]),.sum(PRE[0][7]),.carry(PRE[1][8]));
	full_adder fa41(.a(fs[29]),.b(fc[28]),.c_in(fs[15]),.sum(PRE[0][8]),.carry(PRE[1][9]));
	full_adder fa42(.a(fs[30]),.b(fc[29]),.c_in(fs[17]),.sum(PRE[0][9]),.carry(PRE[1][10]));
	full_adder fa43(.a(fs[31]),.b(fc[30]),.c_in(fs[19]),.sum(PRE[0][10]),.carry(PRE[1][11]));
	full_adder fa44(.a(fs[32]),.b(fc[31]),.c_in(fs[21]),.sum(PRE[0][11]),.carry(PRE[1][12]));
	full_adder fa45(.a(fs[33]),.b(fc[32]),.c_in(fs[23]),.sum(PRE[0][12]),.carry(PRE[1][13]));
	full_adder fa46(.a(fs[34]),.b(fc[33]),.c_in(fs[25]),.sum(PRE[0][13]),.carry(PRE[1][14]));
	full_adder fa47(.a(M[14]),.b(fc[34]),.c_in(P[7][6]),.sum(PRE[0][14]),.carry(PRE[1][15]));
endmodule

