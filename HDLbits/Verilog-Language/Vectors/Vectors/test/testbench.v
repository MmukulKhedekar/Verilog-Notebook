module test();

    reg [2:0] in;
    wire [2:0] out;
    wire o0, o1, o2;

    top_module top(in, out, o2, o1, o0);

    initial begin 
        in = 3'b000;
        $monitor("in = %b => out = %b, o2 = %b, o1 = %b, o0 = %b", in, out, o2, o1, o0);
        #1 in = 3'b000;
        #1 in = 3'b001;
        #1 in = 3'b010;
        #1 in = 3'b011;
        #1 in = 3'b100;
        #1 in = 3'b101;
        #1 in = 3'b110;
        #1 in = 3'b111;
    end

endmodule 