//&T-
//&D-
BinaryOperator;

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
    return 1.3e+123;
end
end scientific

begin
    var vDecimal: integer;
    var vReal: 1.0;
    var vScientific: 123e+222;
    var vDecimalArr: array 1 to 2 of array 2 to 3 of integer;
    var vRealArr: array 1 to 2 of array 2 to 3 of real;
    var vStringArr: array 1 to 2 of array 2 to 3 of string;
    var vBoolArr: array 1 to 2 of boolean;

    // ------------------------
    // safe area
    // ------------------------

    // arithmetic
    print 03 + 10;
    print decimal() - oct();

    // mod
    print oct() mod vDecimalArr[2][1];

    // boolean
    print false and true;
    print vBoolArr[3] or vBoolArr[2];

    // relational
    print 03 < 10;
    print decimal() <= oct();
    print 0124 = 1.0;
    print 1.3e+123 >= 03;
    print vDecimal > scientific();
    print vDecimal <> scientific();

    // string
    print "SSLAB" + "NO.1";

    // ------------------------
    // unsafe area
    // ------------------------

    // arithmetic
    print vDecimalArr[2] + vRealArr[4][2];
    print vRealArr[4][2] - vDecimalArr[2];
    print vBoolArr[4] * vRealArr[3][3];
    print vRealArr[4][2] / vRealArr[2];

    // mod
    print vDecimal mod vReal;
    print vReal mod decimal();
    print vReal mod "SSLAB";
    print vScientific mod true;

    // boolean
    print 10 and true;
    print false and "SSLAB";
    print vBoolArr or true;

    // relational
    print vDecimalArr[2] < vRealArr[4][2];
    print vRealArr[4][2] = vDecimalArr[2];
    print vBoolArr[4] >= vRealArr[3][3];
    print vRealArr[4][2] <> vRealArr[2];

    // string
    print "SSLAB" + decimal();
    print "SSLAB" - "SS";
    print "SSLAB" * "SS";
    print "SSLAB" / "SS";
    print "SSLAB" mod "SS";
    print "SSLAB" and "SS";
    print "SSLAB" or "SS";
    print "SSLAB" < "SS";
    print "SSLAB" > "SS";

end
end BinaryOperator
