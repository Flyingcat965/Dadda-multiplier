///////////////////////////////////////////////////////////////////////////////////////////////////
//
//       MODULE: adder16
//  DESCRIPTION: 16 bit adder (carry_out select ) 
//   IO SIGNALS: A,B,O,Cin
//       AUTHOR: YOUR NAME (), 
// ORGANIZATION: 
//      VERSION: 1.0
//      CREATED: Monday 12 November 2018 12:30:50  IST
//     REVISION: ---
///////////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ps/100fs
module CSA_block #(parameter width = 4)(
	input [width -1:0]A,
	input [width -1:0]B,
	output[1:0][width -1:0]SUM,
	output[1:0]c_out);

	genvar i;
	wire [1:0][width - 1:0]carry_out;
	full_adder fa0(A[0],B[0],1'b0,SUM[0][0],carry_out[0][0]);
	full_adder fa1(A[0],B[0],1'b1,SUM[1][0],carry_out[1][0]);
	generate
		for (i = 1; i < width -1 ; i = i + 1) begin:gen_CSA_block
			full_adder fa_carry_out_zero(A[i],B[i],carry_out[0][i-1],SUM[0][i],carry_out[0][i]);
			full_adder fa_carry_out_one(A[i],B[i],carry_out[1][i-1],SUM[1][i],carry_out[1][i]);
		end
	endgenerate
	
	full_adder fa_carry_out_zero_last(A[width-1],B[width-1],carry_out[0][width-2],SUM[0][width-1],c_out[0]);
	full_adder fa_carry_out_one_last(A[width-1],B[width-1],carry_out[1][width-2],SUM[1][width-1],c_out[1]);
endmodule

module CSA_block_tb(); //testbench doesnt have any inputs or outputs
	reg [7:0] A; 	//inputs are takens as reqisters ( they need to hold the value)
	reg [7:0] B;
	wire [1:0][7:0]SUM; //outputs are takens as wires in tb .
	wire [1:0]c_out;
	CSA_block #(.width(8)) dut(.*); //since all the inputs to the dut are the wires of same name
	initial begin
		$dumpfile("CSA_block.vcd"); 	
		$dumpvars(0,CSA_block_tb);			//first argument is the level of debugging
									//level 0 will log all the variable even in 
		//sub modules 
		//whereas level 1 will log only the ones in the top module 
		A = 8'h0;
		B = 8'hff;
		#2000;
		A = 8'hff;
		B = 8'haa;
		#2000;
		B = 8'hff;
		#200;
		#1000;
	end
endmodule

	
