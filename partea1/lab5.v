module MUX(Sel, I0, I1, E);
input Sel, I0, I1;
output E;
assign E = (I1 & Sel) | (I0 & ~Sel);
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

