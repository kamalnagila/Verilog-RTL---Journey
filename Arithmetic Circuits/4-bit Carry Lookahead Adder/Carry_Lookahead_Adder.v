module  Carry_Lookahead_Adder(a,b,cin ,sum,carry);
 input [3:0] a;
 input [3:0] b;
 input cin;
 output [3:0] sum;
 output carry;
 
 wire [3:0] p, g;
 reg [4:0] c;
 integer i;

assign p=a^b;
assign g= a & b;

always @(*) begin
    c[0]=cin;

    for(i=0; i<4 ; i=i+1) begin

      c[i+1]= g[i] + (p[i] & cin);

    end
end

assign sum = p ^ c[3:0];
assign carry = c[4];

endmodule