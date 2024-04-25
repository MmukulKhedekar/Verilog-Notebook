module test();
    reg a, b, sel;
    wire out;

    mux m1(a, b, sel, out);

    always #1 sel = ~sel;
    always #2 a = ~a;
    always #4 b = ~b;

    initial begin 
        a = 1'b0; b = 1'b0; sel = 1'b0;
        $monitor("a = %b, b = %b, sel = %b => out = %b", a, b, sel, out);
        #10 $finish;
    end    

endmodule