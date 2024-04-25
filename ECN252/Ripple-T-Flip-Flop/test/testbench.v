module test();
    reg clk, reset;
    wire [3:0] q;
    ripple_carry_counter rcc(q, clk, reset);

    initial begin
        clk = 1'b0; reset = 1'b1;

        $monitor("clk = %b, reset = %b => q = %b", clk, reset, q);

        #1 reset = 1'b0;

        #20;
        reset = 1'b1;
    
        #1 reset = 1'b0;

        #5;
        $finish;
    end

endmodule