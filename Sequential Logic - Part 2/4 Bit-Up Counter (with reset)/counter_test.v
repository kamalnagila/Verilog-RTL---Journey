`timescale  1ns/1ps
`include "four_counter.v"
module four_test;
 reg clk,rst;
 wire [3:0] count;

four_counter dut(clk,rst,count);
initial begin
    $dumpfile("four_counter.vcd");
    $dumpvars(0,four_test);
end

always #5 clk=~clk;

initial begin
    clk=0;
    rst=1;

    #10 rst=0;

    #100 $finish;
end
endmodule

