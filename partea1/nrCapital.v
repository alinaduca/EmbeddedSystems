module CAP(Clk, A, B, start, R, ack);
input Clk, start;
input [7:0]A;
input [20*7:0]B;
reg [20*7:0]Z;
reg [7:0]index;
output reg ack;
output reg[7:0]R;
reg [7:0]X,Y;
reg aux;
reg [2:0]stare;
always @(posedge Clk)
    if(stare==0)
        if(start==1)
        begin
            X <= A;
            Y <= 0;
            Z <= B;
            R <= 0;
            index <= 0;
            ack <= 0;
            stare <= 1;
        end
        else
            stare <= 0;
    else
        if(stare == 1)
        begin
            if(index==X)
                stare <= 2;
            else
            begin
                if(Z[7:0] >= 65 && Z[7:0] <= 90)
                begin
                    R <= R + 1;
                end
                index = index + 1;
                Z = Z >> 8;
                stare = 1;
            end
        end
        else
            if(stare==2)
                begin
                    stare <= 0;
                    ack <= 1;
                end
initial begin
    stare <= 0;
    ack <= 0;
    end
endmodule
module ceas(c);

    output reg c;
    always
        #5 c <= ~c;
    initial
        c <= 0;
endmodule

module main();
reg start;
reg [7:0]A;
reg [20*7:0]B;
wire ack;
wire [7:0]R;
wire Clk;
ceas cc(Clk);
CAP m(Clk, A, B, start, R, ack);
initial begin
        $monitor("%d %d %d %d %d", $time, start, A, ack, R);
        A <= 16;
        B <= "AbcdEfgh";
        #1 start <= 1;
        #5 start <= 0;
        #1000 $finish();
    end
endmodule