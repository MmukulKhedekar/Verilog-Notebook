module test();
    
    reg a, b, c, d;
    wire out, out_n;

    top_module top(a, b, c, d, out, out_n);

    initial begin 
        a = 0; b = 0; c = 0; d = 0;
        $monitor("a = %b, b = %b, c = %b, d = %b => out = %b, out_n = %b", a, b, c, d, out, out_n);
        for (a = 0; a <= 1; a = a + 1) begin 
            for (b = 0; b <= 1; b = b + 1) begin 
                for (c = 0; c <= 1; c = c + 1) begin 
                    for (d = 0; d <= 1; d = d + 1) begin 
                        #1;
                    end 
                end 
            end
        end
    end

endmodule