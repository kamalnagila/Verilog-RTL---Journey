`timescale 1ns/1ps
`include "4-bit Up-Down Counter.v"
module four_bit_Up_Down_Counter_test;
 reg clk;
 reg m;
 reg reset;
 wire [3:0] count;

 Up_Down_Counter dut(clk,m,reset,count);

 initial begin
    $dumpfile("4-bit Up-Down Counter.vcd");
    $dumpvars(0, four_bit_Up_Down_Counter_test);
 end

 always #5 clk=~clk;

 initial begin
    clk=0; reset=1; m=1;

#10 clk=1; reset=0;

#10 m=0;

#10 reset =1;

#10 reset =0; m=1;

#40 $stop;

 end

 endmodule