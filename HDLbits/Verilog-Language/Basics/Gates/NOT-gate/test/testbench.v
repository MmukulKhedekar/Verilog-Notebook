module test();
    reg a;
    wire b;

    top_module top(a, b);

    initial begin 
        a = 0;
        $monitor("a = %b => b = %b", a, b);
        #1 a = 1'b0;
        #1 a = 1'b1;
    end

endmodule