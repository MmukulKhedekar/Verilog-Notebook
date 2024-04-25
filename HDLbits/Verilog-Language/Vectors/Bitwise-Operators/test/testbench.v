module test();
    reg [2:0] a;
    reg [2:0] b;

    wire [2:0] out_or_bitwise;
    wire [5:0] out_not;

    initial begin 
        a = 3'b000; b = 3'b000;
        $monitor("a = %b, b = %b => out_or_bitwise = %b, out_not = %b", a, b, out_or_bitwise, out_not);

        #1 a = 3'b000; b = 3'b000;
        #1 a = 3'b000; b = 3'b001;
        #1 a = 3'b000; b = 3'b010;
        #1 a = 3'b000; b = 3'b011;
        #1 a = 3'b000; b = 3'b100;
        #1 a = 3'b000; b = 3'b101;
        #1 a = 3'b000; b = 3'b110;
        #1 a = 3'b000; b = 3'b111;

    end
        
endmodule