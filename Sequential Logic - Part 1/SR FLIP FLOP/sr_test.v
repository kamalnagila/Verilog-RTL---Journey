`timescale 1ns/1ps
`include "sr_ff.v"
module sr_test;
 reg s,r;
 reg clk;
 reg reset;
 wire q;
 wire qn;

 sr_ff dut(.s(s),.r(r),.q(q),.qn(qn),.clk(clk),.reset(reset));

 initial begin
  $dumpfile("sr_ff.vcd");
  $dumpvars(0,sr_test);
 end
 
 always #10 clk = ~clk;
 
 initial begin
  
  s=0 ; r=0; reset=1; clk=0;
#10
  reset=0;
  s=0 ; r=1;
#10
 


#10 s=1 ;  r=0;

#10
 s=1 ; r=1;

 $finish;



 end
endmodule
    
 