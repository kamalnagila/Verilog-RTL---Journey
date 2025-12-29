module Up_Down_Counter(
    input wire clk,
    input wire m,
    input wire reset,
    output  reg [3:0] count

);

always @(posedge clk) begin
    
    if(m) begin
           if (reset)
               count<=0;
            else
                count<= count+ 4'b0001;
    end

    else 
           if (reset)
            begin
            count <=4'b1111;    
           end
 
        else  begin

            count<= count-4'b0001;

         end
 
       
    end            
    



endmodule