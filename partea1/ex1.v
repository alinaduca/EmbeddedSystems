module OR(A, B, C);
input A, B;
output C;
assign C = A | B;
endmodule

module AND(A, B, C);
input A, B;
output C;
assign C = A & B;
endmodule

module MUX(Sel, I0, I1, E);
input Sel, I0, I1;
output E;
wire temp1;
wire temp2;
AND a1(I1, Sel, temp1);
AND a0(I0, ~Sel, temp2);
OR o1(temp1, temp2, E);
endmodule

module main();
reg _sel, _i0, _i1;
wire _e;
MUX m(_sel, _i0, _i1, _e);
initial
begin
    $monitor("%d", _e);
    _i0  = 1;
    _i1  = 0;
    _sel = 0;
end
endmodule