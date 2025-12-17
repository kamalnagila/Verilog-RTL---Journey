module full_adder(a,b,cin,sum,carry);
    input wire a;
    input wire b;
    input wire cin;
    output wire sum;
    output wire carry;  


assign sum= a ^ b ^ cin;
assign carry= (a  & b) | ((~a) & b & cin) | (cin & a & (~b));
    
endmodule