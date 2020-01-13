//&S-
//&T-
//&D-

ManyFunctionParameter;

var gc : 54;
var gv : integer;

sum(a, b, c, d, e, f, g, h, i, j, k :integer) : integer;
begin
    return (a + ((b * c) + (-d))) + i + j + k + (((e * f) + (g * h)));
end
end sum
begin

    var lv: integer;
    var lc: 45;

    read gv;
    read lv;

    print sum(gc, gv, 4, 134, lv, lc, gc, 12, 3, 1, 6);

end
end ManyFunctionParameter

