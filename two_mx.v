module two_mux(i,sel,f);
 input wire [1:0] i;
 input wire sel;
 output reg f;

 
 always @(*) begin
    case(sel)
  1'b0 : f=i[0];
  1'b1 : f=i[1];
 endcase
 end
endmodule
