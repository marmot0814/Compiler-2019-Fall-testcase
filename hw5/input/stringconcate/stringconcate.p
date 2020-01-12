//&S-
//&T-
//&D-

stringconcate;

var gc: "Hello";
var gv: string;

concate(a, b: string): string;
begin
    a := a + b;
    return a;
end
end concate

begin
    var lc: "issssssssssssue";
    var lv: string;
    
    lv := "World";
    read gv;
    for i := 10 to 20 do
        if (i mod 3 = 0) then
            gv := concate(gv, gc);
        end if
        if (i mod 3 = 1) then
            gv := concate(gv, lv);
        end if
        if (i mod 3 = 2) then
            gv := concate(gv, lc);
        end if
    end do
    print lc;
    print lv;
    print gc;
    print gv;
end
end stringconcate
