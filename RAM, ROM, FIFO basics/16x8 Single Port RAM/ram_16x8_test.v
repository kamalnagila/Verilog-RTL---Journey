`timescale 1ns/1ps
`include "ram_16x8.v"
module ram_16x8_test;
  reg clk;
  reg reset;
  reg [7:0] din;
  reg [3:0] addr;
  wire [7:0] dout;

  ram_16x8 dut(clk,reset,addr,din,dout);

  initial begin
    $dumpfile("ram_16x8.vcd");
    $dumpvars(0,ram_16x8_test);

  end

  always #5 clk=~clk;



  initial begin
        
        clk = 0;
        reset = 0;
        addr = 0;
        din = 0;

        #10
        $display("Writing 8'hAA to Address 5");
        addr = 4'd5;
        din = 8'hAA; 
        reset = 1;      
               
#10;         
        
        $display("Writing 8'h55 to Address 12");
        addr = 4'd12;
        din = 8'h55;
        reset = 1;      
        
    
        reset = 0;     
        
        addr = 4'd5; 
        #10;
  end


  endmodule