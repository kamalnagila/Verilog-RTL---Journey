module four_bit_down(clk,reset,count);
 input wire clk ;
 input wire reset;
 output reg [3:0] count;

 always @ (posedge clk ) begin
    if(reset) begin
        count<=4'b1111;    
        end
 
    else 
      count<= count-4'b0001;

 end
endmodule    