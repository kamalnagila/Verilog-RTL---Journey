`timescale 1ns/1ps
`include "half_adder.v"

module half_adder_tb;
  reg a, b;
  wire sum, carry;

  half_adder dut (.a(a), .b(b), .sum(sum), .carry(carry));
  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);
  end

  initial begin
    {a,b} = 2'b00;
    #10 {a,b} = 2'b01;
    #10 {a,b} = 2'b10;
    #10 {a,b} = 2'b11;
    #10 $finish;
  end
endmodule
