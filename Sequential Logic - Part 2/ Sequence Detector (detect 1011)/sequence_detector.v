module sequence_detector(x,clk,reset,z);
 input x,clk,reset;
 output reg z;
 parameter s0=0, s1=1, s2=2, s3=3;
 reg[1:0] ps,ns;

 always @(posedge clk or posedge reset)
    begin
     if(reset) 
       ps <= s0; // if reset is active
     else    
       ps <= ns;
    end

always @(ps,x) begin
     case (ps) 

      s0:  begin 
          z= x ? 0 : 0;
          ns= x ? s1 : s0;
       end

      s1: begin 
          z= x ? 0 : 0;
          ns= x ? s1 : s2;

      end

      s2: begin
          z= x ? 0 : 0;
          ns= x ? s3 : s2;

      end

      s3: begin
          
          z= x ? 1 : 0;
          ns= x ? s0 : s3;
      end


          

endcase
end



endmodule