`timescale 1ns/1ps
`include "four_mx.v"
module four_test;
 reg [3:0] i;
 reg [1:0] sel;
 wire f;
 four_mx dut(i,sel,f);
// four_mx dut(.i(i),.sel(sel),.f(f));
 initial begin
 $dumpfile("four_mx.vcd");
 $dumpvars(0,four_test);
 
 // test vector 1
 sel=2'b00 ; i=4'b1010;

#10 sel=2'b01;

#10 sel=2'b10;

#10 sel=2'b11;

// test vector 2 
 #10 sel=2'b00 ; i=4'b1100;

 #10 sel=2'b10 ;

 #10 sel=2'b11 ;

 #10 sel=2'b01 ;

 $finish;

end


endmodule

