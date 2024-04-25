module test();

    wire out;
    top_module top(out);

    initial begin 
        $monitor("out %b", out);
    end

endmodule