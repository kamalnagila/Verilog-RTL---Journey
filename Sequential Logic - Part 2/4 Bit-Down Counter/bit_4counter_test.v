`timescale 1ns/1ps
`include "four_down.v"
module four_bit_down_test;
 reg clk;
 reg reset;
 wire  [3:0] count;

four_bit_down dut(clk,reset,count);

initial begin
    $dumpfile("four_down.vcd");
    $dumpvars(0,four_bit_down_test);

end
always #5 clk=~clk;
 
initial begin
    clk=0; reset=1;
   

    #10 reset=0;

    #200$finish;
end
endmodule