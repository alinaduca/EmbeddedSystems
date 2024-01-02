module SQRT(Clk, A, start, R, ack);
input Clk, start;
input [15:0]A;
output reg ack;
output reg[7:0]R;
reg [15:0]X;
reg [3:0]stare;
always @(posedge Clk)
    if(stare==0)
        if(start==1)
            begin
                X <= A;
                R <= 0;
                ack <= 0;
                stare <= 1;
            end
        else
            stare <= 0;
    else
        if(stare == 1)
            begin
                if(R * R > X)
                    begin
                        // R <= R - 1;
                        stare <= 2;
                    end
                else
                    begin
                        R <= R + 1;
                        stare <= 1;
                    end
            end

        else
            if(stare==2)
                begin
                    stare <= 0;
                    R <= R - 1;
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
reg [15:0]A;
wire ack;
wire [7:0]R;
wire Clk;
ceas cc(Clk);
SQRT m(Clk, A, start, R, ack);
initial begin
        $monitor("%d %d %d %d %d",$time, start, A, R, ack);
        A <= 300;
        #4 start <= 1;
        #10 start <= 0;
        #200 $finish();
    end
endmodule
