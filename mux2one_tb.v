`timescale 1ns / 1ps

module mux2one_tb;
    // Testbench sinyalleri
    reg a;
    reg b;
    reg sel;
    wire out;

    // Tasarladığımız MUX modülünü çağırıyoruz (Unit Under Test)
    mux2one uut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Simülasyon başlarken dalga formu kaydı için gerekli ayarlar
        $dumpfile("mux2one.vcd");
        $dumpvars(0, mux2one_tb);

        // Test senaryoları (Girişlere farklı değerler veriyoruz)
        a = 0; b = 0; sel = 0; #10;
        a = 1; b = 0; sel = 0; #10;
        a = 0; b = 1; sel = 1; #10;
        a = 1; b = 1; sel = 1; #10;
        
        $finish;
    end

    // Sonuçları terminalde görmek için
    initial begin
        $monitor("Zaman=%0t | a=%b b=%b sel=%b | out=%b", $time, a, b, sel, out);
    end

endmodule