module d_ff(clk,d,reset,q,qn);
 input wire clk;
 input wire d;
 input wire reset;
 output reg q;
 output wire qn;


 always @(posedge clk) begin
    if(reset) begin
      q<=1'b0;
    end
    else 
      q<=d;
      
 end

  assign qn = ~q;

endmodule