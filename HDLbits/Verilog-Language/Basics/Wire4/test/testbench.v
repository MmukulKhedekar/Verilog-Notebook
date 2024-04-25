module test();

    reg a, b, c;
    wire x, y, z, w;

    top_module top(a, b, c, x, y, z, w);

    initial begin 
        a = 0; b = 0; c = 0;

        $monitor("a = %b, b = %b, c = %b => x = %b, y = %b, z = %b, w = %b", a, b, c, x, y, z, w);
        #1 a = 1'b0; b = 1'b0; c = 1'b0;
        #1 a = 1'b0; b = 1'b0; c = 1'b1;
        #1 a = 1'b0; b = 1'b1; c = 1'b0;
        #1 a = 1'b0; b = 1'b1; c = 1'b1;
        #1 a = 1'b1; b = 1'b0; c = 1'b0;
        #1 a = 1'b1; b = 1'b0; c = 1'b1;
        #1 a = 1'b1; b = 1'b1; c = 1'b0;
        #1 a = 1'b1; b = 1'b1; c = 1'b1;

    end
endmodule