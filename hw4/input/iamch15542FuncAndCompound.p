//&T-
iamch15542FuncAndCompound;


var arrLowBiggerUp : boolean;
var arrLowBiggerUp : array 55146 to 80 of integer; // wrong, redeclared

func(a : integer; b : array 1 to 2 of array 4 to 8 of integer ) : integer;
begin
    var testvar : integer;
    begin
        var testvar2 : integer;
        testvar2 := testvar; // ok, cant use
    end
end
end func

func2();
begin
    return abc; // wrong, undeclared
end
end func2

func2(a, b:integer; a :boolean) : integer; // wrong, func2 is redeclared, a is redeclared
begin
    var d : integer;
    var d : boolean; // wrong, redeclare
end
end func2

func3(c, d:integer; c :boolean) : integer; // wrong, param is redeclared
begin
    var f : integer;
    var f : boolean; // wrong, redeclare
end
end func3

func4(a : array 1 to 4 of boolean) : integer;
begin
    var d : integer;
    var d : boolean; // wrong, redeclare
end
end func4

begin
    var k : array 2 to 3 of array 6 to 10 of integer;
    var k1 : array 1 to 3 of array 6 to 10 of integer;
    var k2 : array 1 to 4 of boolean;
    var k3 : array 2 to 3 of array 1 to 4 of boolean;
    var k4 : array 2 to 3 of array 1 to 5 of boolean;

    print c; // wrong, undeclared
    print func2(); // wrong, type is void
    print func(1, k); // ok, arr is same
    print func(true, k1); // wrong, type wrong, size no same
    print func(1, k1); // wrong, size no same
    print func(1, k2); // wrong, size no same
    print func4(k2); // ok is same
    print func4(k1); // wrong
    print func4(k3[3]); // I think it is ok 
    print func4(k4[10]); // wrong, size not same
end
end iamch15542FuncAndCompound
