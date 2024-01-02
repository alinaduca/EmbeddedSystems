module PRIM(Clk, A, start, R, ack);
input Clk, start;
input [7:0]A;
output reg ack;
output reg[7:0]R;
reg [7:0]X;
reg [7:0]mod;
reg [3:0]stare;
always @(posedge Clk)

    if(stare==0)
        if(start==1)
        begin
            X <= A;
            stare <= 1;
        end
        else
            stare <= 0;

    else if(stare == 1)
    begin
        if((X[0]==0 && X!=2) || X==1)
        begin
            R <= X;
            stare <= 4;
        end
        else
        begin
            R <= 3;
            mod <= X;
            stare <= 2;
        end
    end

    else if(stare == 2)
    begin
        if(mod < R)
            stare <= 3;
        else
        begin
            mod <= mod - R;
            stare <= 2;
        end
    end

    else if(stare == 3)
    begin
        
        if(mod != 0 & R * R <= X)
        begin
            R <= R + 1;
            mod <= X;
            stare <= 2;
        end
        else
            stare <= 4;
    end

    else if(stare==4)
    begin
        if(R * R > X)
            R <= X;
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
wire ack;
wire [7:0]R;
wire Clk;
ceas cc(Clk);
PRIM m(Clk, A, start, R, ack);
initial begin
        $monitor("%d %d %d %d %d", $time, start, A, R, ack);
        A <= 31;
        #4 start <= 1;
        #10 start <= 0;
        #800 $finish();
    end
endmodule
