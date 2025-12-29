`timescale 1ns/1ps
`include "4_bit_Register.v"
module four_bit_Register_test;
 reg [3:0] d_in;
 reg clk;
 reg load;
 reg reset;
 wire [3:0] q_out;

four_bit_Register dut(d_in,clk,load,reset,q_out);
 initial begin
    $dumpfile("four_bit_Register.vcd");
    $dumpvars(0,four_bit_Register_test);

 end


 always #5 clk= ~clk;

initial begin
    clk=0; reset=1; d_in=4'd0; load=0;

#10 reset=0 ; d_in=4'd2; load=1;

#10 d_in=4'd3; load=0;


#10 d_in=4'd1; load=1;

$finish;
end

endmodule