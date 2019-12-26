//&T-
sometest;

var func : integer;
func(): boolean; // redeclared
    begin
    end
end func

func2(): boolean;
    begin
    end
end func2

begin
    var a : integer;
    var b : array 1 to 10 of array 10 to 100 of integer;
    var func2 : 100; // wrong, redeclared
    var c : 100;
    print a[func()][0]; // wrong, func() not declared
    begin
        for i := 10 to 12 do
              a := 10; // ok. can use
        end do
    end
end
end sometest