`timescale 1ns/1ps
`include "d_ff.v"
module d_ff_test;
 reg clk;
 reg d;
 reg reset;
 wire q;
 wire qn;

 d_ff dut(clk,d,reset,q,qn);

 initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars(0,d_ff_test);
 end

always #5 clk=~clk;
always #10 d=~d;
 
 initial begin
    clk=0; reset=1; 
    d=0;



    #10 reset=0;

    

    

    #40 $finish;

 end


 endmodule