module MUL(Clk, A, start, R, ack);
input Clk, start;
input [7:0]A;
output reg ack;
output reg[15:0]R;
reg [7:0]X,Y;
reg [1:0]stare;
always @(posedge Clk)
    if(stare==0)
        if(start==1)
            begin
                X <= A;
                Y <= A;
                R <= 0;
                ack <= 0;
                stare <= 1;
            end
        else
            stare <= 0;
    else
        if(stare==1)
            if(Y==0)
                begin
                    ack <= 1;
                    stare <= 2;
                end
            else
                begin
                    R <= R + X;
                    Y <= Y - 1;
                    stare <= 1;
                end
        else
            if(stare==2)
                stare <= 0;
initial begin
    stare <= 0;
    ack <= 0;
    end
endmodule

module SQRT(Clk, A, start, R, ack);
input Clk, start;
input [7:0]A;
output reg ack;
output reg[7:0]R;
reg [7:0]X;
wire [15:0]n;
wire ack2;
reg start2;
reg [3:0]stare;
MUL m(Clk, R, start2, n, ack2);
always @(posedge Clk)
    if(stare==0)
        if(start==1)
            begin
                X <= A;
                R <= 0;
                ack <= 0;
                start2 <= 0;
                stare <= 1;
            end
        else
            stare <= 0;
    else
        if(stare == 1)
            begin
                if(n > X)
                    stare <= 3;
                else
                    begin
                        start2 <= 1;
                        if(ack2==1 || R == 0)
                            R <= R + 1;
                        stare <= 2;
                    end
            end
        else
            if(stare==2)
                begin
                    start2 <= 0;
                    if(ack2==1)
                        stare <= 1;
                    else
                        stare <= 2;
                end

            else
                if(stare==3)
                    begin
                        R <= R-1;
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
        #2 c <= ~c;
    initial
        c <= 0;
endmodule

module main();
reg start;
reg [7:0]A;
wire ack;
wire [7:0]R;
wire Clk;
ceas cc(Clk);
SQRT m(Clk, A, start, R, ack);
initial begin
        $monitor("%d %d %d %d %d", $time, start, A, R, ack);
        A <= 255;
        #4 start <= 1;
        #10 start <= 0;
        #800 $finish();
    end
endmodule