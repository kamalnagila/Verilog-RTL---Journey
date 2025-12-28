`timescale 1ns/1ps
`include "4-bitArrayMultiplier.v"
module arraymultiplier_test;
 reg [3:0] a;
 reg [3:0] b;
 wire [7:0] p;

 array_multiplier_4bit dut(a,b,p);

 initial begin
    $dumpfile("array_multiplier_4bit.vcd");
    $dumpvars(0,arraymultiplier_test);
 end

 initial begin
    a=4'd0 ; b=4'd0;

   #5  a=4'd2 ; b=4'd0;

  #10 a = 4'd3;  b = 4'd5; 


  #10 a = 4'd7;  b = 4'd9;    

  #10 a = 4'd15; b = 4'd15;

  $finish;

  end
 endmodule

