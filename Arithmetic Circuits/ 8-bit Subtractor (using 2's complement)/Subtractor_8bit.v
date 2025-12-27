module Subtractor_8bit(a,b,reset,result);
 input  [7:0] a;
 input  [7:0] b;
 input reset;
 output reg [7:0]  result;


 reg [7:0] compliment;
 always @ (*) begin
    if(reset) begin
        result= a+b;

    end
    else begin
       compliment= ~b  + 1;
       result= a+compliment;
    end 
 end
endmodule 