//&T-
binarytest;

func(): integer;
begin
end
end func

decimal(): integer;
begin
    return 10;
end
end decimal

oct(): integer;
begin
    return 03;
end
end oct

scientific(): real;
begin
    return 1.324234234;
end
end scientific

begin
    var arr: array 1 to 10 of array 10 to 100 of integer;
    var constant: 010;
    var vDecimal: integer;
    var vReal: 1.0;
    var vScientific: 123e+2;
    var vDecimalArr: array 1 to 6 of array 2 to 10 of integer;
    var vRealArr: array 1 to 4 of array 2 to 7 of real;
    var vStringArr: array 1 to 12 of array 2 to 4 of string;
    var vBoolArr: array 1 to 5 of boolean;

    // ------------------------
    // safe area
    // ------------------------

    // read
    read arr[4][func()];

    // arithmetic
    print 03 + 10 + 1 + 2 + 3 + 4;
    print 1.1 + 5 / 3.2 * 4;
    print 1.1 + 5 * 3.2 / 4 - oct();
    print decimal() - oct();

    // mod
    print oct() mod vDecimalArr[2][1];

    // boolean
    print false and true or false;
    print vBoolArr[3] or vBoolArr[2] and true or false;

    // relational
    print 1.3e+123 >= 03;
    print vDecimal <> scientific();

    // string
    print "SSLAB" + "NO.1" + "NO.2" + "NO.3";
    print "SSLAB" + "NO.1" + "NO.2" + "NO.3" + "NO.4";

    // ------------------------
    // unsafe area
    // ------------------------

    // arithmetic
    print 03 + 10 + 1 + "ccccc" + 3 + 4;
    print 1.1 + 5 / "ccccaaa" * 4;
    print 1.1 + 5 * "bbbbb" / 4 - oct();
    print 1.1 + 3 - vDecimalArr[13];
    print decimal() - true;

    // boolean
    print true and true or 1;
    print false and true or true and "SSLAB" ;
    print vBoolArr or true;

    // relational
    print 03 < 10 < 5 < 6;
    print decimal() <= oct() > 1.0;
    print 0124 = 1.0 <> 3;
    print vDecimal > scientific() > oct();


end
end binarytest
