module DualPortRAM(
    input clka,
    input clkb,
    input weA,
    input weB,
    input [7:0] din_a,
    input [7:0] din_b,
    input [3:0] addra,
    input [3:0] addrb,
    output reg [7:0] dout_a,
    output reg [7:0] dout_b
);

reg [7:0] memory [15:0];

always @(posedge clka) begin
    if(weA) begin

      memory[addra] <= din_a;

      dout_a<=din_a;

    end

    else
        dout_a<=memory[addra];

    
end

always @(posedge clkb) begin
    if(weB) begin

        memory[addrb]<=din_b;
        dout_b<= din_b;
    end
    else 
       dout_b<=memory[addrb];

end


endmodule