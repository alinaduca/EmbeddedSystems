module MUL(Clk, B, A, start, R, ack);
input Clk, start;
input [63:0]B;
input [31:0]A;
output reg ack;
output reg[63:0]R;
reg [31:0]X,Y;
reg [63:0]stare;
always @(posedge Clk)
    if(stare==0)
        if(start==1)
        begin
            X <= B;
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

module POW(Clk, A, B, start, R, ack);
input Clk, start;
input [31:0]A,B;
output reg ack;
output reg[63:0]R;
reg [31:0]X,Y;
wire [63:0]n;
wire ack2;
reg start2;
reg [3:0]stare;
MUL m(Clk, R, X, start2, n, ack2);
always @(posedge Clk)
    if(stare==0)
        if(start==1)
        begin
            X <= A;
            Y <= B-1;
            R <= A;
            ack <= 0;
            start2 <= 0;
            stare <= 1;
        end
        else
            stare <= 0;
    else
        if(stare == 1)
        begin
            if(Y==0)
                stare <= 3;
            else
            begin
                start2 <= 1;
                if(ack2==1 || R == 1)
                begin
                    R <= n;
                    Y <= Y-1;
                end
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
        #1.5 c <= ~c;
    initial
        c <= 0;
endmodule

module main();
reg start;
reg [31:0]A, B;
wire ack;
wire [63:0]R;
wire Clk;
ceas cc(Clk);
POW m(Clk, A, B, start, R, ack);
initial begin
        $monitor("%d %d %d %d %d", $time, start, A, B, ack, R);
        A <= 2;
        B <= 8;
        #1 start <= 1;
        #4 start <= 0;
        #200 $finish();
    end
endmodule