`timescale 1ns/1ps
`include "full_adder.v"
module full_adder_tb;
 reg a;
 reg b;
 reg cin;
 wire sum;
 wire carry;

 full_adder dut(a,b,cin,sum,carry);
 initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);
 end

initial begin
  {a,b,cin} = 3'b000;
  #10 {a,b,cin} = 3'b001;
  #10 {a,b,cin} = 3'b010;
  #10 {a,b,cin} = 3'b011;
  #10 {a,b,cin} = 3'b100;
  #10 {a,b,cin} = 3'b101;
  #10 {a,b,cin} = 3'b110;
  #10 {a,b,cin} = 3'b111;
  #10 $finish;
end

 endmodule 