//&S-
//&T-
//&D-

condition;

var gv: integer;
var gc: 2;

sum(a,b: integer): integer;
begin
	var c: integer;
	c := a + b;
	return c;
end
end sum

begin

var lv: integer;
var lc: 4;

gv := 1;
lv := 3;

if ( gv = 1 ) then  
    print gv;
else
    print lv;
end if

if ( sum(gv, gc) > 4 ) then  
    print gv;
else
    print lv;
end if

end
end condition
