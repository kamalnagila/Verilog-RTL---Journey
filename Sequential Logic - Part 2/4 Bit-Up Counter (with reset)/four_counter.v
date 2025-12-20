module four_counter (clk,rst,count);
 input wire clk,rst;
 output reg [3:0] count ;
 always @(posedge clk )
   begin 
     if (rst)
      count<=0;
     else
      count<= count+ 4'b0001;
   end
endmodule