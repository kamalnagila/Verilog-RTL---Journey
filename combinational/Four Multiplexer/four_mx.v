module four_mx(i,sel,f);
 input wire [3:0] i;
 input wire [1:0] sel;
 output reg f;
 
 always @(*) begin
    case(sel)
    2'b00 : f=i[0];
    2'b01 : f=i[1];
    2'b10 : f=i[2];
    2'b11 : f=i[3];
    endcase

 end
endmodule

