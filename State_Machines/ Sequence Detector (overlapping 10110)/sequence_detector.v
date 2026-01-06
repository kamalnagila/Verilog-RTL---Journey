module sequence_detector(
   input clk,
   input x,
   input reset,
   output reg f

);

   parameter  s1=0, s2=1, s3=2, s4=3,s5=4;

  reg [2:0] ps,ns ;



  always @ (posedge clk or reset) begin
    if(reset) begin
      
       ps<=s1;
    
    end

    else 
       ps<=ns;
  end

  always @(ps,x) begin

    
        
        case (ps)
          
          s1: begin
              f= x ? 0 : 0;
              ns= x ? s2 : s1;
          end

          s2: begin  
                f= x ? 0 : 0;
                ns= x ? s2 : s3;
          end
        
          s3: begin

              f= x ? 0 : 0;
              ns= x ? s4 : s3; 
              
              end


          s4: begin
              f= x ? 0 : 0;
              ns= x ? s5 : s4; 
          end

          s5: begin
               f= x ? 0 : 1;
              ns= x ? s2 : s3 ;
          end

            
             
             
        endcase
    end
    


endmodule