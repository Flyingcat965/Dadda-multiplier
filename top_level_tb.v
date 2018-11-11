///////////////////////////////////////////////////////////////////////////////////////////////////
//
//       MODULE: top_level_tb
//  DESCRIPTION: tset bench for 8*8 dadda 
//   IO SIGNALS: ---
//       AUTHOR: YOUR NAME (), 
// ORGANIZATION: 
//      VERSION: 1.0
//      CREATED: Sunday 11 November 2018 04:05:03  IST
//     REVISION: ---
///////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ps/100fs
module top_level_tb(); //testbench doesnt have any inputs or outputs
	reg [7:0] A; 	//inputs are takens as reqisters ( they need to hold the value)
	reg [7:0] B;
	reg[15:0] M;
	wire [16:0] RES; //outputs are takens as wires in tb .
	top_level dut(.*); //since all the inputs to the dut are the wires of same name
	initial begin
		$dumpfile("top_level_tb.vcd"); 	
		$dumpvars(0,top_level_tb);			//first argument is the level of debugging
									//level 0 will log all the variable even in 
		//sub modules 
		//whereas level 1 will log only the ones in the top module 
		A = 8'h0;
		B = 8'h0;
		M = 16'h0;
		#2000;
		A = 8'hff;
		B = 8'haa;
		#2000;
		B = 8'hff;
		#200;
		#1000;
	end
endmodule`timescale 1ps/100fs
module top_level_tb(); //testbench doesnt have any inputs or outputs
	reg [7:0] A; 	//inputs are takens as reqisters ( they need to hold the value)
	reg [7:0] B;
	reg[15:0] M;
	wire [16:0] RES; //outputs are takens as wires in tb .
	top_level dut(.*); //since all the inputs to the dut are the wires of same name
	initial begin
		$dumpfile("top_level_tb.vcd"); 	
		$dumpvars(0,top_level_tb);			//first argument is the level of debugging
									//level 0 will log all the variable even in 
		//sub modules 
		//whereas level 1 will log only the ones in the top module 
		A = 8'h0;
		B = 8'h0;
		M = 16'h0;
		#2000;
		A = 8'hff;
		B = 8'haa;
		#2000;
		B = 8'hff;
		#200;
		#1000;
	end
endmodule`timescale 1ps/100fs
module top_level_tb(); //testbench doesnt have any inputs or outputs
	reg [7:0] A; 	//inputs are takens as reqisters ( they need to hold the value)
	reg [7:0] B;
	reg[15:0] M;
	wire [16:0] RES; //outputs are takens as wires in tb .
	top_level dut(.*); //since all the inputs to the dut are the wires of same name
	initial begin
		$dumpfile("top_level_tb.vcd"); 	
		$dumpvars(0,top_level_tb);			//first argument is the level of debugging
									//level 0 will log all the variable even in 
		//sub modules 
		//whereas level 1 will log only the ones in the top module 
		A = 8'h0;
		B = 8'h0;
		M = 16'h0;
		#2000;
		A = 8'hff;
		B = 8'haa;
		#2000;
		B = 8'hff;
		#200;
		#1000;
	end
endmodule
