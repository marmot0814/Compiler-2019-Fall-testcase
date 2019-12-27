//&T-
iamch15542IfandWhile;

// global declartion
var a : integer;
var b : string;
var c : real;
var int : integer;

func( a, b: integer ): integer;
begin
    return a*b;
end
end func

func2(): boolean;
begin
    return a; // wrong, type need to be boolean
end
end func2

func3();
begin
    print "nothing";
end
end func3

begin
    var d, e: integer;
    var arr: array 1 to 5 of integer;
    var i : integer;
    var aaaa : 2;
    aaaa[0] := 1 + 0.2 + true; // wrong, left over array subscript, right bool type wrong

    c := a + 6.11111; // ok, because all is integer or real
    b := "stringgg" + "stringg"; // ok, because all is integer
    int := "stringgg" + "stringg"; // wrong, because right need be integer
    d := arr[0]; // ok, both are integer
    e := arr; // wrong, arr can not assign
    arr[0] := 123; // ok, both are integer
  
    print 1 + d * ( c + 4 ); // ok
    print func(1, 1); // ok
    print 1 + 1 + 1 + 1 * decccc; // wrong, no declared
    print func3(); // type wrong
    print "ccc" + func4(); // wrong func4 no declared

    // condition statement
    if a > b then // wrong, integer and string
        print arr; // wrong, can not print array
    else
        print " a <= b \n"; // ok
    end if

    // while statement
    i := 1;
    while i <= 10 do
        print i * i;
        print "\n";
    end do
    // okkkkkkkkkkkkkkkkkkkkkkkkkkk

    if VarIsUndeclared > b then // wrong, not declared
        print " a > b \n";
    else
        print " a <= b \n";
    end if

    while VarIsUndeclared <= 10 do // wrong, not declared
        print i * i;
        print "\n";
    end do

    if "string" > b then // wrong, type wrong
        print func(1, true); // wrong, param type wrong
    else
        print " a <= b \n"; // ok
    end if

    if not true then // ok
        print func(1, 1); // ok
    else
        print " a <= b \n"; //ok
    end if

    if func2() then // ok, func2 return boolean
        print "a+a \n";
    end if

    if not func2() then // ok
        print func(1, 1); // ok
    else
        print " a <= b \n"; //ok
    end if

    if not func() then // wrong, type wrong
        print func(1, 1); // ok
    else
        print " a <= b \n"; //ok
    end if

    if d * 3 + 1 * c <> e * 4 mod 123 then // I think is ok
        print "test"; 
    end if

    func(); // wrong, need 2 param, only have 0
    
    func(1); // wrong, need 2 param, only have 1

    func("asdf", 1); // wrong, need 2 param, have 2, but type wrong

    print func(2 * 4, 3) * a * arr[0]; // ok, need 2 param, have 2

end
end iamch15542IfandWhile
