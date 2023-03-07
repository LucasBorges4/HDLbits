module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    wire a, b;
    assign out_and = in[3]&&in[2]&&in[1]&&in[0];
    assign out_or = in[3]||in[2]||in[1]||in[0];
    assign a = (!in[3]&&in[2])||(in[3]&&!in[2]);
    assign b = (!in[1]&&in[0])||(in[1]&&!in[0]);
    assign out_xor = (!a&&b)||(a&&!b);

endmodule
