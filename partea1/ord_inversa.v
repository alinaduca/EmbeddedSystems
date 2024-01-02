module ORD(Clk, A, B, start, R, ack, start2, ack2, start3, ack3);
input Clk, start, ack2, ack3;
output reg start2, start3;
input [7:0]A, B;
reg [3:0]stare;
reg [7:0]stack[15:0];
output reg ack;
output reg[7:0]R;
reg [7:0]X, Y;
always @(posedge Clk)
    if(stare==0)
    begin
        if(start==1)
        begin
            // $display("%0d Im here", $time);
            X <= A;
            Y <= 0;
            stare <= 1;
        end
        else
        begin
            
            stare <= 0;
        end
    end
    else if(stare==1)
    begin
        if(Y==X)
            stare<=3;
        else
        begin
            start2 <= 1;
            stare <= 2;
        end
    end
    else if(stare==2)
    begin
        start2 <= 0;
        if(ack2==1)
        begin
            stack[Y] <= B;
            Y <= Y+1;
        end
        else
            stare <= 2;
    end
    else if(stare==3)
    begin
        if(Y==0)
            stare <= 5;
        else begin
            start3 <= 1;
            stare <= 4;
        end
    end
    else if(stare==4)
    begin
        start3 <= 0;
        if(ack3==1)
        begin
            Y <= Y-1;
            stare <= 3;
        end
        else
            stare <= 4;
    end
    else if(stare==5)
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
        #5 c <= ~c; //semnal de perioada 10
    initial
        c <= 0;
endmodule

module main();
reg start;
reg ack2, ack3;
reg [7:0]A, B;
wire ack;
wire start2, start3;
wire [7:0]R;
wire Clk;
ceas cc(Clk);
ORD m(Clk, A, B, start, R, ack, start2, ack2, start3, ack3);
always 
            $display("Heree");
            B <= 7;
initial begin
        $monitor("%d %d %d %d %d %d %d %d %d %d", $time, start, A, B, ack, R, start2, ack2, start3, ack3);
        A <= 5;
        #1 start <= 1;
        #6 start <= 0;
        
            
        // end
        #700 $finish();
    end
endmodule