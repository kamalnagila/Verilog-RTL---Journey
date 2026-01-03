`timescale 1ns/1ps
`include "DualPortRAM.v"
module DualPortRAM_test;
 reg clka;
 reg clkb;
 reg weA;
 reg weB;
 reg [7:0] din_a;
 reg [7:0] din_b;
 reg [3:0] addra;
 reg [3:0] addrb;
 wire  [7:0] dout_a;
 wire [7:0] dout_b;
 
 DualPortRAM dut(clka,clkb,weA,weB,din_a,din_b,addra,addrb,dout_a,dout_b);

 initial begin
    $dumpfile("DualPortRAM.vcd");
    $dumpvars(0,DualPortRAM_test);

 end

always #5 clka=~clka;
always #5 clkb=~clkb;

initial begin
    
    clka=0; clkb=0;
    weA=0; weB=0;
    din_a=0 ; din_b=0;
    addra = 0; addrb = 0;


#10        
     weA=1;
     addra = 4'h2;
     din_a = 8'hAA;


#10 
    addrb = 4'h2;

#10
    
    weA = 1; addra = 4'h4; din_a = 8'h55;
    
    weB = 1; addrb = 4'h6; din_b = 8'h66;

#10 
    
    weA=0 ; weB=0;

#10   addra = 4'h4;
      addrb = 4'h6;

#10   
   weA = 1; weB = 1;     addra = 4'h8; addrb = 4'h8;

   din_a= 8'hF0;   din_b = 8'h0F;


 #70 $finish;



end
 
 endmodule