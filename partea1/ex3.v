module MUX(Clk, A, rez);
input Clk;
input [7:0]A;
output reg rez;
reg [7:0]X,Y;
always @(posedge Clk)
begin
    X = A;
    while(X != 0)
    begin
        #1 $display("X = %0d, Y = %0d", X, Y);
        rez = X[0];
        Y = X>>1;
        X = Y;
        
    end
end
endmodule

module ceas(c);
    output reg c;
    always
        #7 c <= ~c;
    initial
        c <= 0;
endmodule

module main();
reg [7:0]A;
wire rez;
wire Clk;
ceas cc(Clk);
MUX m(Clk, A, rez);
initial begin
    $monitor("%d %d", $time, rez);
    A <= 10;
    #20 $finish();
end
endmodule




// module display_bits(input [7:0] num, output [7:0] bits);
//     assign bits = num;
// endmodule

// module main();
//     reg [7:0] num;
//     wire [7:0] bits;
//     integer i;
//     display_bits b(num, bits);
//     initial begin
//         num = 123;  // change this number to display different bits
        
//         $monitor("%d: %b", $time, bits);
//         for (i = 7; i >= 0; i = i - 1) begin
//             $display("Bit %0d: %b", i, bits[i]);
//         end
//         #100 $finish();
//     end
// endmodule


// module main();
// reg [7:0] num;
// reg [7:0] temp;
// reg [2:0] i;
// wire [7:0] bit;
// assign bit = num >> i & 1'b1;
// initial begin
//     num = 157; // sample input
//     i = 0;
//     repeat(8)
//     begin
//         #1 $display("Bit %0d: %0d", i, bit);
//         i = i + 1;
//     end
//     $finish;
// end
// endmodule
