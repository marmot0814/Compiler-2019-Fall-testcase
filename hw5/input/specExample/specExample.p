//&S-
//&T-
//&D-

specExample;

var a: integer;
var d: 4;

sum(a,b: integer): integer;
begin
	var c: integer;
	c := a + b;
	return c;
end
end sum

begin

var b, c: integer;
b := 4;
c := 6;

read a;
print a;

a := sum(b, d);
print a;

a := (b + c) * d;
print a;

if ( a <= 40 ) then  
    print a;
else
    print b;
end if

while b < 8 do
    print b;
    b := b + 1;
end do

end
end specExample
