`timescale 1ns/1ps
`include "Subtractor_8bit.v"
module Subtractor_8bit_test;
 reg  [7:0] a;
 reg [7:0] b;
 reg reset;
 wire [7:0] result;

Subtractor_8bit dut(a,b,reset,result);

initial begin
    $dumpfile("Subtractor_8bit.vcd");
    $dumpvars(0,Subtractor_8bit_test);

end

initial begin
    a=8'd0; b=8'd0; reset =1;

#5  a=8'd2; b=8'd0; 

 reset=0;

#5   a=8'd9; b=8'd6; 

#5  a=8'd2; b=8'd3; 

#5  a=8'd5; b=8'd8; 

#5  a=8'd2; b=8'd0; 

$finish;


end
endmodule