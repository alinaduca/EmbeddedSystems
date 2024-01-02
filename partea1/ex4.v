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
                    if(Y[0]==1)
                        R <= R + X;
                    X <= X<<1;
                    Y <= Y>>1;
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

module ceas(c);
    output reg c;
    always
        #5 c <= ~c; //semnal de perioada 10
    initial
        c <= 0;
endmodule

module main();
reg start;
reg [7:0]A,B;
wire ack;
wire [15:0]R;
wire Clk;
ceas cc(Clk);
MUL m(Clk, A, B, start, R, ack);
initial begin
        $monitor("%d %d %d %d %d %d",$time, start,A, B, R, ack);
        A <= 5;
        B <= 7;
        #4 start <= 1;
        #10 start <= 0;
        #100 $finish();
    end
endmodule