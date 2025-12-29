module four_bit_Register(
    input wire [3:0] d_in,
    input wire clk,
    input wire load,
    input wire reset,
    output reg [3:0] q_out

);

always @(posedge clk ) begin

    if(reset) begin
        q_out<=4'd0;
    end
    else if (load) begin 
       
       q_out<=d_in;
       
    end

    
end

endmodule