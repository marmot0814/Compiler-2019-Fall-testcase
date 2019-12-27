1: //&T-
2: //&D-
3: BinaryOperator;
4: 
5: decimal(): integer;
6: begin
7:     return 10;
8: end
9: end decimal
10: 
11: oct(): integer;
12: begin
13:     return 03;
14: end
15: end oct
16: 
17: scientific(): real;
18: begin
19:     return 1.3e+123;
20: end
21: end scientific
22: 
23: begin
24:     var vDecimal: integer;
25:     var vReal: 1.0;
26:     var vScientific: 123e+222;
27:     var vDecimalArr: array 1 to 2 of array 2 to 3 of integer;
28:     var vRealArr: array 1 to 2 of array 2 to 3 of real;
29:     var vStringArr: array 1 to 2 of array 2 to 3 of string;
30:     var vBoolArr: array 1 to 2 of boolean;
31: 
32:     // ------------------------
33:     // safe area
34:     // ------------------------
35: 
36:     // arithmetic
37:     print 03 + 10;
38:     print decimal() - oct();
39: 
40:     // mod
41:     print oct() mod vDecimalArr[2][1];
42: 
43:     // boolean
44:     print false and true;
45:     print vBoolArr[3] or vBoolArr[2];
46: 
47:     // relational
48:     print 03 < 10;
49:     print decimal() <= oct();
50:     print 0124 = 1.0;
51:     print 1.3e+123 >= 03;
52:     print vDecimal > scientific();
53:     print vDecimal <> scientific();
54: 
55:     // string
56:     print "SSLAB" + "NO.1";
57: 
58:     // ------------------------
59:     // unsafe area
60:     // ------------------------
61: 
62:     // arithmetic
63:     print vDecimalArr[2] + vRealArr[4][2];
64:     print vRealArr[4][2] - vDecimalArr[2];
65:     print vBoolArr[4] * vRealArr[3][3];
66:     print vRealArr[4][2] / vRealArr[2];
67: 
68:     // mod
69:     print vDecimal mod vReal;
70:     print vReal mod decimal();
71:     print vReal mod "SSLAB";
72:     print vScientific mod true;
73: 
74:     // boolean
75:     print 10 and true;
76:     print false and "SSLAB";
77:     print vBoolArr or true;
78: 
79:     // relational
80:     print vDecimalArr[2] < vRealArr[4][2];
81:     print vRealArr[4][2] = vDecimalArr[2];
82:     print vBoolArr[4] >= vRealArr[3][3];
83:     print vRealArr[4][2] <> vRealArr[2];
84: 
85:     // string
86:     print "SSLAB" + decimal();
87:     print "SSLAB" - "SS";
88:     print "SSLAB" * "SS";
89:     print "SSLAB" / "SS";
90:     print "SSLAB" mod "SS";
91:     print "SSLAB" and "SS";
92:     print "SSLAB" or "SS";
93:     print "SSLAB" < "SS";
94:     print "SSLAB" > "SS";
95: 
96: end
97: end BinaryOperator
<Error> Found in line 63, column 26: invalid operands to binary operation '+' ('integer [1]' and 'real')
        print vDecimalArr[2] + vRealArr[4][2];
                             ^
<Error> Found in line 64, column 26: invalid operands to binary operation '-' ('real' and 'integer [1]')
        print vRealArr[4][2] - vDecimalArr[2];
                             ^
<Error> Found in line 65, column 23: invalid operands to binary operation '*' ('boolean' and 'real')
        print vBoolArr[4] * vRealArr[3][3];
                          ^
<Error> Found in line 66, column 26: invalid operands to binary operation '/' ('real' and 'real [1]')
        print vRealArr[4][2] / vRealArr[2];
                             ^
<Error> Found in line 69, column 20: invalid operands to binary operation 'mod' ('integer' and 'real')
        print vDecimal mod vReal;
                       ^
<Error> Found in line 70, column 17: invalid operands to binary operation 'mod' ('real' and 'integer')
        print vReal mod decimal();
                    ^
<Error> Found in line 71, column 17: invalid operands to binary operation 'mod' ('real' and 'string')
        print vReal mod "SSLAB";
                    ^
<Error> Found in line 72, column 23: invalid operands to binary operation 'mod' ('real' and 'boolean')
        print vScientific mod true;
                          ^
<Error> Found in line 75, column 14: invalid operands to binary operation 'and' ('integer' and 'boolean')
        print 10 and true;
                 ^
<Error> Found in line 76, column 17: invalid operands to binary operation 'and' ('boolean' and 'string')
        print false and "SSLAB";
                    ^
<Error> Found in line 77, column 20: invalid operands to binary operation 'or' ('boolean [1]' and 'boolean')
        print vBoolArr or true;
                       ^
<Error> Found in line 80, column 26: invalid operands to binary operation '<' ('integer [1]' and 'real')
        print vDecimalArr[2] < vRealArr[4][2];
                             ^
<Error> Found in line 81, column 26: invalid operands to binary operation '=' ('real' and 'integer [1]')
        print vRealArr[4][2] = vDecimalArr[2];
                             ^
<Error> Found in line 82, column 23: invalid operands to binary operation '>=' ('boolean' and 'real')
        print vBoolArr[4] >= vRealArr[3][3];
                          ^
<Error> Found in line 83, column 26: invalid operands to binary operation '<>' ('real' and 'real [1]')
        print vRealArr[4][2] <> vRealArr[2];
                             ^
<Error> Found in line 86, column 19: invalid operands to binary operation '+' ('string' and 'integer')
        print "SSLAB" + decimal();
                      ^
<Error> Found in line 87, column 19: invalid operands to binary operation '-' ('string' and 'string')
        print "SSLAB" - "SS";
                      ^
<Error> Found in line 88, column 19: invalid operands to binary operation '*' ('string' and 'string')
        print "SSLAB" * "SS";
                      ^
<Error> Found in line 89, column 19: invalid operands to binary operation '/' ('string' and 'string')
        print "SSLAB" / "SS";
                      ^
<Error> Found in line 90, column 19: invalid operands to binary operation 'mod' ('string' and 'string')
        print "SSLAB" mod "SS";
                      ^
<Error> Found in line 91, column 19: invalid operands to binary operation 'and' ('string' and 'string')
        print "SSLAB" and "SS";
                      ^
<Error> Found in line 92, column 19: invalid operands to binary operation 'or' ('string' and 'string')
        print "SSLAB" or "SS";
                      ^
<Error> Found in line 93, column 19: invalid operands to binary operation '<' ('string' and 'string')
        print "SSLAB" < "SS";
                      ^
<Error> Found in line 94, column 19: invalid operands to binary operation '>' ('string' and 'string')
        print "SSLAB" > "SS";
                      ^
