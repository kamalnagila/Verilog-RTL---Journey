module traffic_controller(
    input clk,
    input reset,
    output reg [2:0] light_NORTH,
    output reg [2:0] light_EAST,
    output reg [2:0] light_WEST,
    output reg [2:0] light_SOUTH

);

parameter   s0_green=0 , s1_yellow=1 , s2_green=2 , s3_yellow=3; // state encoding
reg [1:0] ns ,ps;

always @ (posedge clk or reset) begin
    if(reset) begin
        light_NORTH=s0_green;

    end
    else 
       ps<=ps;
end

always @ (*) begin
    case(ps) 
            
          s0_green :begin
                ns=s1_yellow;

                light_NORTH=3'b001; // green

                light_EAST=3'b001; // green

                light_WEST= 3'b100; // red

                light_SOUTH=3'b100; // red

          end  
          s1_yellow :begin

                ns=s2_green; 

                
                light_NORTH=3'b001; // yellow

                light_EAST=3'b001; // yellow

                light_WEST= 3'b100; // red

                light_SOUTH=3'b100; // red


          end

          s2_green : begin
                
                 ns= s3_yellow;

                 
                light_NORTH=3'b100; // red

                light_EAST=3'b100 ; // red

                light_WEST= 3'b001; // grren

                light_SOUTH=3'b001; // green

          end
                 

          s3_yellow: begin

                ns= s0_green;

                
                light_NORTH=3'b100; // green

                light_EAST=3'b100; // green

                light_WEST= 3'b001; // red

                light_SOUTH=3'b001; // red

          end

          default: begin
               
                ns = s0_green;

               
                light_NORTH=3'b100; // red

                light_EAST=3'b100; // red

                light_WEST= 3'b100; // red

                light_SOUTH=3'b100; // red

          end

    endcase
       
end


endmodule