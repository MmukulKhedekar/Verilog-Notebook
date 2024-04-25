module test();
    reg clk, reset;
    wire [3:0] q;

    counter c(clk, reset, q);

    always #1 clk = ~clk;

    initial begin 
        clk = 1'b0; reset = 1'b0;
        $monitor("clk = %b, reset = %b => q = %b", clk, reset, q);

        #5 reset = 1'b1;
        #1 reset = 1'b0;
        #20 $finish;
    end
endmodule