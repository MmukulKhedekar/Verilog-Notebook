module test();
    reg a0, a1, a2, a3, b0, b1, b2, b3;
    wire s0, s1, s2, s3, cout;

    4_bit_full_adder final(a0, a1, a2, a3, b0, b1, b2, b3, s0, s1, s2, s3, cout);

    initial begin 
        a0 = 1'b0; a1 = 1'b0; a2 = 1'b0; a3 = 1'b0; b0 = 1'b0; b1 = 1'b0; b2 = 1'b0; b3 = 1'b0;
        $monitor("s0 = %b, s1 = %b, s2 = %b, s3 = %b", s1, s2, s3, s4);
        #1 a0 = 1'b0; a1 = 1'b0; a2 = 1'b0; a3 = 1'b0; b0 = 1'b0; b1 = 1'b0; b2 = 1'b0; b3 = 1'b1;
        #1 a0 = 1'b0; a1 = 1'b1; a2 = 1'b0; a3 = 1'b1; b0 = 1'b0; b1 = 1'b0; b2 = 1'b0; b3 = 1'b0;
        #1 a0 = 1'b1; a1 = 1'b0; a2 = 1'b0; a3 = 1'b1; b0 = 1'b0; b1 = 1'b1; b2 = 1'b0; b3 = 1'b1;
    end

endmodule