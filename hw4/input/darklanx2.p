//&T-
darklanx2Error;
// no global declaration(s)

func(a : integer ; b : array 1 to 2 of array 2 to 4 of real) : boolean;
begin
    var c : "hello world!";
    begin
        var d : real;
        return (b[1][4] >= 1.0);
    end
end
end func

begin
    var a : integer;
    var b : array 1 to 2 of array 2 to 4 of real;
    print func(a, func(a, func(a,b)));
end
end darklanx2Error
