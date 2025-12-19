module sr_ff(s,r,q,qn,clk,reset);
 input wire s , r;
 input wire clk;
 input wire reset;
 output reg q;
 output wire qn;


 always @(posedge clk ) begin

    if(reset) begin
        q<=1'b0;
 end
    else begin

        case({s,r}) 
            
            2'b00 : q <=q;

            2'b01 : q <=1'b0;

            2'b10 : q <=1'b1;

            2'b11 : q <=1'bx; // hold previous state
    

        endcase
    
        end
 
 end
       assign qn = ~q;

endmodule
 