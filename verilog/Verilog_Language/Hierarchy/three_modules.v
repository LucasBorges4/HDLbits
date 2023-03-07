module top_module ( input clk, input d, output q );
	wire conex1, conex2;
    my_dff(clk, d, conex1);
    my_dff(clk, conex1, conex2);
    my_dff(clk, conex2, q);
    
endmodule