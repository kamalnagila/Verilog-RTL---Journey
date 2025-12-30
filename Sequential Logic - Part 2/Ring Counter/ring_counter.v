module ring_counter(
    input clk,
    input reset,
    output reg [7:0] count

);

always @(posedge clk) begin
    if(reset) count=8'b00000001;

    else begin
        count<=count<<1;

        count[0]<= count[7];

    end
    
end

endmodule