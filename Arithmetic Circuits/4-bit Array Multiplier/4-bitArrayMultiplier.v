module array_multiplier_4bit (
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] p
);

    wire [3:0] pp [0:3];
    genvar i;

    generate
        for (i = 0; i < 4; i = i + 1) begin : gen_pp
            assign pp[i] = a & {4{b[i]}};
        end
    endgenerate

    assign p = ({4'b0, pp[0]}      ) +
               ({3'b0, pp[1], 1'b0}) +
               ({2'b0, pp[2], 2'b0}) +
               ({1'b0, pp[3], 3'b0});

endmodule
