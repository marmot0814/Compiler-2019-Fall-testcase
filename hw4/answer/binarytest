1: //&T-
2: binarytest;
3:
4: func(): integer;
5: begin
6: end
7: end func
8:
9: decimal(): integer;
10: begin
11:     return 10;
12: end
13: end decimal
14:
15: oct(): integer;
16: begin
17:     return 03;
18: end
19: end oct
20:
21: scientific(): real;
22: begin
23:     return 1.324234234;
24: end
25: end scientific
26:
27: begin
28:     var arr: array 1 to 10 of array 10 to 100 of integer;
29:     var constant: 010;
30:     var vDecimal: integer;
31:     var vReal: 1.0;
32:     var vScientific: 123e+2;
33:     var vDecimalArr: array 1 to 6 of array 2 to 10 of integer;
34:     var vRealArr: array 1 to 4 of array 2 to 7 of real;
35:     var vStringArr: array 1 to 12 of array 2 to 4 of string;
36:     var vBoolArr: array 1 to 5 of boolean;
37:
38:     // ------------------------
39:     // safe area
40:     // ------------------------
41:
42:     // read
43:     read arr[4][func()];
44:
45:     // arithmetic
46:     print 03 + 10 + 1 + 2 + 3 + 4;
47:     print 1.1 + 5 / 3.2 * 4;
48:     print 1.1 + 5 * 3.2 / 4 - oct();
49:     print decimal() - oct();
50:
51:     // mod
52:     print oct() mod vDecimalArr[2][1];
53:
54:     // boolean
55:     print false and true or false;
56:     print vBoolArr[3] or vBoolArr[2] and true or false;
57:
58:     // relational
59:     print 1.3e+123 >= 03;
60:     print vDecimal <> scientific();
61:
62:     // string
63:     print "SSLAB" + "NO.1" + "NO.2" + "NO.3";
64:     print "SSLAB" + "NO.1" + "NO.2" + "NO.3" + "NO.4";
65:
66:     // ------------------------
67:     // unsafe area
68:     // ------------------------
69:
70:     // arithmetic
71:     print 03 + 10 + 1 + "ccccc" + 3 + 4;
72:     print 1.1 + 5 / "ccccaaa" * 4;
73:     print 1.1 + 5 * "bbbbb" / 4 - oct();
74:     print 1.1 + 3 - vDecimalArr[13];
75:     print decimal() - true;
76:
77:     // boolean
78:     print true and true or 1;
79:     print false and true or true and "SSLAB" ;
80:     print vBoolArr or true;
81:
82:     // relational
83:     print 03 < 10 < 5 < 6;
84:     print decimal() <= oct() > 1.0;
85:     print 0124 = 1.0 <> 3;
86:     print vDecimal > scientific() > oct();
87:
88:
89: end
90: end binarytest
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
arr                              variable   1(local)   integer [9][90]
constant                         constant   1(local)   integer          8
vDecimal                         variable   1(local)   integer
vReal                            constant   1(local)   real             1.000000
vScientific                      constant   1(local)   real             12300.000000
vDecimalArr                      variable   1(local)   integer [5][8]
vRealArr                         variable   1(local)   real [3][5]
vStringArr                       variable   1(local)   string [11][2]
vBoolArr                         variable   1(local)   boolean [4]
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
binarytest                       program    0(global)  void
func                             function   0(global)  integer
decimal                          function   0(global)  integer
oct                              function   0(global)  integer
scientific                       function   0(global)  real
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 71, column 23: invalid operands to binary operation '+' ('integer' and 'string')
        print 03 + 10 + 1 + "ccccc" + 3 + 4;
                          ^
<Error> Found in line 72, column 19: invalid operands to binary operation '/' ('integer' and 'string')
        print 1.1 + 5 / "ccccaaa" * 4;
                      ^
<Error> Found in line 73, column 19: invalid operands to binary operation '*' ('integer' and 'string')
        print 1.1 + 5 * "bbbbb" / 4 - oct();
                      ^
<Error> Found in line 74, column 19: invalid operands to binary operation '-' ('real' and 'integer [8]')
        print 1.1 + 3 - vDecimalArr[13];
                      ^
<Error> Found in line 75, column 21: invalid operands to binary operation '-' ('integer' and 'boolean')
        print decimal() - true;
                        ^
<Error> Found in line 78, column 25: invalid operands to binary operation 'or' ('boolean' and 'integer')
        print true and true or 1;
                            ^
<Error> Found in line 79, column 34: invalid operands to binary operation 'and' ('boolean' and 'string')
        print false and true or true and "SSLAB" ;
                                     ^
<Error> Found in line 80, column 20: invalid operands to binary operation 'or' ('boolean [4]' and 'boolean')
        print vBoolArr or true;
                       ^
<Error> Found in line 83, column 19: invalid operands to binary operation '<' ('boolean' and 'integer')
        print 03 < 10 < 5 < 6;
                      ^
<Error> Found in line 84, column 30: invalid operands to binary operation '>' ('boolean' and 'real')
        print decimal() <= oct() > 1.0;
                                 ^
<Error> Found in line 85, column 22: invalid operands to binary operation '<>' ('boolean' and 'integer')
        print 0124 = 1.0 <> 3;
                         ^
<Error> Found in line 86, column 35: invalid operands to binary operation '>' ('boolean' and 'integer')
        print vDecimal > scientific() > oct();
                                      ^
