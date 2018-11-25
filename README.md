# Dadda-multiplier
Dadda multiplier implimentation in verilog, Uses carry select adder (square root stacking) for final addition 

##See the report pdf for more details.

   An 8x8 dadda multiplier was designed and verified using verilog. the details of
   the top level module are as given below.
    A,B - 8 bit multiplicants
    M - previous result existing in Accumulator(16bits)
    RES - 17 bit output.


submodules:
  gen part products - generate the partial products of the multiplication, A*B
    as an 8x8 array.
  
  processing block - takes the partial products,M and does the dadda reduction
  
  adder16 - 16 bit Carry select adder ,

  test data was randomly generated using the program GenLoops.java and verified the
   circuit using the test bench - top level tb(file:top level tb.v). Test data was
  loaded from files ain.txt,bin.txt,m.txt and res.txt



run.sh will compile all modules

