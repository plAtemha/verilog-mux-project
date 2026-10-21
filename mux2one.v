module mux2one (
    input wire a,
    input wire b,
    input wire sel,
    output wire out
);
    // sel 1 ise b'yi, 0 ise a'yı seçer
    assign out = (sel) ? b : a;

endmodule