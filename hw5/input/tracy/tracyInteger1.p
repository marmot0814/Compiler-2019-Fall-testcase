//&S-
//&T-
//&D-

tracyInteger1;

// global declarations
var gv1, gv2: integer;
var gc1: 1;
var gv3: integer;
var gc2, gc3: 2;
var gv4, gv5: integer;

sum(a,b: integer): integer;
begin
    var c: integer;
    c := a + b;
    return c;
end
end sum

sum4addgc2(a, b, c, d: integer): integer;
begin
    var ret: integer;
    ret := 0;
    ret := sum(ret, sum(a, sum(b, sum(c, d)))) + sum(a, b) + gc2;
    return ret;
end
end sum4addgc2

begin

// local declarations
var lv1, lv2: integer;
var lc1: 4;
var lv3: integer;
var lc2, lc3: 3;

// global assignment
gv1 := ((((gc1 + gc2) * (gc1 - gc2)) / (-gc1)) + 1) mod lc1;
print gv1; // 0
gv2 := sum(sum(gv1, gc1), 3) + 3;
print gv2; // 7
gv3 := lc2;
print gv3; // 3
gv4 := lc3;
print gv4; // 3
gv5 := gv1;
print gv5; // 0

lv1 := 0;
print lv1; // 0
lv2 := sum4addgc2(gv2, sum(gv1, gv1), 3, lv1);
print lv2; // 19
lv3 := lc1;
print lv3; // 4

end
end tracyInteger1
