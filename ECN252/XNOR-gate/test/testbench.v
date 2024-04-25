module test();
    reg a, b;
    wire c;

    top_module top(a, b, c);

    initial begin 
        a = 0; b = 0;
        $monitor("a = %b, b = %b => c = %b", a, b, c);
        #1 a = 1'b0; b = 1'b0;
        #1 a = 1'b0; b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
    end

endmodule