module gen_part_products(
	input [7:0] A,
	input [7:0] B,
	output[7:0][7:0] P); 	//portlist can be 2D array in verilog 
	genvar i;
	generate
		for(i = 0; i < 8; i = i +1) begin:part_product
			assign P[i] = A & B[i] ;
		end
	endgenerate
endmodule


	


