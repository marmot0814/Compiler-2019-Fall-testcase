//&S-
//&T-
//&D-

tracyBool1;

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
var lv4: boolean;
var lc4: false;

// global assignment
gv1 := ((((gc1 + gc2) * (gc1 - gc2)) / (-gc1)) + 1) mod lc1;
gv2 := sum(sum(gv1, gc1), 3) + 3;
gv3 := lc2;
gv4 := lc3;
gv5 := gv1;

lv1 := 0;
lv2 := sum4addgc2(gv2, sum(gv1, gv1), 3, lv1);
lv3 := lc1;
lv4 := true;

if ( lc4 or (((3 > 1) or (3 = 3)) or (1 = 0)) ) then
    print 1;
else
    print 2;
end if

if ( ((3 > 1) or (3 = 3)) and (1 = 0) ) then
    print -1;
end if

if ( not (not (gv2 <> -(3 * 8) )) and lv4 ) then
    print 3;
else
    print 4;
end if

end
end tracyBool1
