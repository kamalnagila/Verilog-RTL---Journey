`timescale 1ns/1ps
`include "ring_counter.v"
module ring_counter_test;
 reg clk;
 reg reset;
 wire [7:0] count;

ring_counter dut(clk,reset,  count);

initial begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(0,ring_counter_test);

end

always #5 clk=~clk;

initial begin
    clk=0; reset=1; 


#10 reset=0; 

#100 $finish;
end

endmodule