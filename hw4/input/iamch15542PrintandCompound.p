//&T-
iamch15542PrintandCompound;

// global declartion
var a : integer;
var b : string;

func( a, b : integer; c : string ) : integer;   // a, b is ok
begin
    var a : boolean; // wrong, same as param
    begin
        var a : string; // is ok
        a := b; // will use param b, so it is wrong
        for idx := 1 to 1150 do
            b := idx; // param can be reference
        end do
    end
end
end func

begin
    var first : integer;
    begin
        var sec : integer;

        sec := first; // ok, can not use
        sec := a; // can use global

    end
end
end iamch15542PrintandCompound
