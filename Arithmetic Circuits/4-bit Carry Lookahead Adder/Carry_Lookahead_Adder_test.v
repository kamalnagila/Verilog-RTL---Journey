`timescale 1ns/1ps
`include "Carry_Lookahead_Adder.v"
module Carry_Lookahead_Adder_test;
 reg [3:0] a;
 reg [3:0] b;
 reg cin;
 wire [3:0] sum;
 wire carry;

Carry_Lookahead_Adder dut(a,b,cin ,sum,carry);

initial begin
    $dumpfile(" Carry_Lookahead_Adder.vcd");
    $dumpvars(0, Carry_Lookahead_Adder_test);
end

initial begin
    #5 a=4'b0000; b=4'b0001; cin=0;


    #5 a=4'b1110; b=4'b1111; cin=1;

    #5 a=4'b1111 ; b=4'b1111; cin=1;

    #5 a=4'd3 ; b=4'd4 ; cin=0;

    $finish;
end
endmodule
