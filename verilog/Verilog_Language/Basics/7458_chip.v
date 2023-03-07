module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire wp1, wp2, wp3, wp4;
    assign {wp1, wp2, wp3, wp4} = {p2a&&p2b, p2c&&p2d, p1a&&p1b&&p1c, p1d&&p1e&&p1f};
    assign {p2y, p1y} = {wp1||wp2, wp3||wp4};


endmodule