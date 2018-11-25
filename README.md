# Dadda-multiplier


Dadda multiplier implimentation in verilog, Uses carry select adder (square root stacking) for final addition 


## See the report pdf for more details.

   An 8x8 dadda multiplier was designed and verified using verilog. the details of
   the top level module are as given below.
    A,B - 8 bit multiplicants
    M - previous result existing in Accumulator(16bits)
    RES - 17 bit output.


#### submodules:
  gen part products - generate the partial products of the multiplication, A*B
    as an 8x8 array.
  
  processing block - takes the partial products,M and does the dadda reduction
  
  adder16 - 16 bit Carry select adder ,

  test data was randomly generated using the program GenLoops.java and verified the
   circuit using the test bench - top level tb(file:top level tb.v). Test data was
  loaded from files ain.txt,bin.txt,m.txt and res.txt



### run.sh will compile all modules

# Dependencies
compilation was done using icarus-iverilog, this can be installed in ubuntu 18 and above by
		
		
		
		sudo apt install iverilog
		for other operating systems please goto
		http://iverilog.wikia.com/wiki/Installation_Guide
		
		
		
	
   
   to analyse the waveforms, gtkwave was used ,can be installed in ubuntu by 
		
      
      sudo apt install gtkwave
		
	
	
   
   A small java program, GenLoops.java was used to generate test data and certain 
	reccuring assign statements. This doesn't pose any requirement on java runtime if you are 
	using the txt files included in the repo for the test benches. 
	Verilog code uses constructs in verilog like generate loops , and parameters, 
	you can refer to IEEE standard for verilog for details
   
   ## Compiling java code to get random input vectors
   java sdk needs to be installed to compile and run the program 
         
         
         
         
   to compile the code use
   
   
         javac GenLoops.java 
   
   to run the code , to generate output on std out , 
   
            
          
          java GenLoops
          
 copy and paste the outputs to apropriate files 

