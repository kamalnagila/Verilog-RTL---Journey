module ram_16x8(
    input wire clk,
    input wire reset,
    input [3:0] addr,
    input [7:0] din,
    output [7:0] dout
);

 reg [7:0] memory [0:15];

 always @ (posedge clk) begin
    
    if(reset) begin
    
       memory[addr]<=din;
      
    end

 end

 assign d_out=memory[addr];

endmodule