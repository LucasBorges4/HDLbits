module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire wa, wb, wc;
    assign {wa,wb} = {a&&b, c&&d};
    assign {wc} = {wa||wb};
    assign {out, out_n} = {wc, !wc};

endmodule