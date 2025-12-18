`timescale 1ns/1ps
`include "two_mx.v"
module two_mx_tb;
 reg [1:0] i ;
 reg sel;
 wire f;

 two_mux dut(.i(i),.sel(sel),.f(f));
 initial begin
    $dumpfile("two_mx.vcd");
    $dumpvars(0,two_mx_tb);
 end

 initial begin

 #10    i = 2'b01; sel = 0;



 #10    i = 2'b10; sel = 1;

 #10    

  $finish;



 end

endmodule
