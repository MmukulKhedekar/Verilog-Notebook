module test();
    reg clk, reset;
    wire [3:0] out;

    ripple_counter r(clk, reset, out);

    always #5 clk = ~clk;

    initial begin 
        reset = 1'b0; clk = 1'b0;

        $monitor("clk = %b, reset = %b => out = %b", clk, reset, out);

        repeat(25) @(posedge clk);
        $finish;
    end

endmodule 