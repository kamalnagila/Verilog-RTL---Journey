`include "sequence_detector.v"
module sequence_test;
 reg x,clk,reset;
 wire z;
 sequence_detector det(x,clk,reset,z);
 initial begin
    $dumpfile("sequence_detector.vcd");
    $dumpvars(0,sequence_test);
    clk= 1'b0; 
    reset=1'b1;
    #15 reset=1'b0;
 end
 always #5 clk=~clk;
 initial begin
    #10 x=0; #10 x=0; #10 x=1; #10 x=1;
    #10 x=0; #10 x=1; #10 x=1; #10 x=0;
    #10 x=1; #10 x=0; #10 x=1; #10 x=1;
    #10 $finish;
 end
 endmodule