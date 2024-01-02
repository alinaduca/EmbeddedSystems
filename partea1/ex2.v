module MUL(Clk, A, B, start, R, ack);
input Clk, start;
input [7:0]A,B;
output reg ack;
output reg[15:0]R;
reg [7:0]X,Y;
reg [1:0]stare;
always @(posedge Clk)
    if(stare==0)
        if(start==1)
            begin
                X <= A;
                Y <= B;
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

module SQRT(Clk, A, start, R, ack, mull);
input Clk, start;
input [7:0]A;
output reg ack;
output reg[7:0]R;
output reg[15:0]mull;
reg [7:0]X;
wire [15:0]n;
wire ack2;
reg start2;
reg [3:0]stare;
MUL m(Clk, R, R, start2, n, ack2);
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
                    begin
                        stare <= 3;
                    end
                else
                    begin
                        start2 <= 1;
                        if((n > 0 && R > 0) || R == 0)
                            R <= R + 1;
                        stare <= 2;
                    end
            end
        else
            if(stare==2)
                begin
                    start2 <= 0;
                    if(ack2==1)
                        begin
                            mull <= n;
                            stare <= 1;
                        end
                    else
                        stare <= 2;
                end

            else
                if(stare==3)
                    begin
                        R <= R - 1;
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
        #5 c <= ~c; //semnal de perioada 10
    initial
        c <= 0;
endmodule

module main();
reg start;
reg [7:0]A;
wire ack;
wire [7:0]R;
wire [15:0]mull;
wire Clk;
ceas cc(Clk);
SQRT m(Clk, A, start, R, ack, mull);
initial begin
        $monitor("%d %d %d %d %d %d",$time, start, A, R, ack, mull);
        A <= 49;
        #4 start <= 1;
        #10 start <= 0;
        #1000 $finish();
    end
endmodule


