`timescale 1ns/1ps
`include "traffic_controller.v"
module traffic_controller_test;
 reg clk;
 reg reset;
 wire [2:0] light_NORTH;
 wire [2:0] light_EAST;
 wire [2:0] light_WEST;
 wire [2:0] light_SOUTH;


 traffic_controller dut(clk,reset,light_NORTH,light_EAST,light_WEST,light_SOUTH);

 initial begin
    $dumpfile("traffic_controller.vcd");
    $dumpvars(0,traffic_controller_test);

 end

 always #5 clk=~clk;

 initial begin
    clk=0; reset=1;

#15 // hold reset for some time

    reset=0;

 #200 $finish;
 end

 endmodule