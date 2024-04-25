module test();

    wire zero;
    top_module top(zero);

    initial begin 
        $monitor("zero %b", zero);
    end 
endmodule