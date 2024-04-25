module test();
    reg clk, d;
    wire q;

    d_flip_flop d1(clk, d, q);

    always #12 clk = ~clk;
    initial begin 
        clk = 0; d = 0; q = 0;

        $monitor("clk = %b, d = %b => q = %b", clk, d, q);
        #1 d = 0;
        #1 d = 0;
        #1 d = 0;
        #1 d = 1;
        #1 d = 1;
        #1 d = 1;
        #1 d = 0;
        #1 d = 0;
        #1 d = 0;
        #1 d = 1;
        #1 d = 1;
        #1 d = 1;

    end 

endmodule 