1: //&T-
2: iamch15542IfandWhile;
3:
4: // global declartion
5: var a : integer;
6: var b : string;
7: var c : real;
8: var int : integer;
9:
10: func( a, b: integer ): integer;
11: begin
12:     return a*b;
13: end
14: end func
15:
16: func2(): boolean;
17: begin
18:     return a; // wrong, type need to be boolean
19: end
20: end func2
21:
22: func3();
23: begin
24:     print "nothing";
25: end
26: end func3
27:
28: begin
29:     var d, e: integer;
30:     var arr: array 1 to 5 of integer;
31:     var i : integer;
32:     var aaaa : 2;
33:     aaaa[0] := 1 + 0.2 + true; // wrong, left over array subscript, right bool type wrong
34:
35:     c := a + 6.11111; // ok, because all is integer or real
36:     b := "stringgg" + "stringg"; // ok, because all is integer
37:     int := "stringgg" + "stringg"; // wrong, because right need be integer
38:     d := arr[0]; // ok, both are integer
39:     e := arr; // wrong, arr can not assign
40:     arr[0] := 123; // ok, both are integer
41:
42:     print 1 + d * ( c + 4 ); // ok
43:     print func(1, 1); // ok
44:     print 1 + 1 + 1 + 1 * decccc; // wrong, no declared
45:     print func3(); // type wrong
46:     print "ccc" + func4(); // wrong func4 no declared
47:
48:     // condition statement
49:     if a > b then // wrong, integer and string
50:         print arr; // wrong, can not print array
51:     else
52:         print " a <= b \n"; // ok
53:     end if
54:
55:     // while statement
56:     i := 1;
57:     while i <= 10 do
58:         print i * i;
59:         print "\n";
60:     end do
61:     // okkkkkkkkkkkkkkkkkkkkkkkkkkk
62:
63:     if VarIsUndeclared > b then // wrong, not declared
64:         print " a > b \n";
65:     else
66:         print " a <= b \n";
67:     end if
68:
69:     while VarIsUndeclared <= 10 do // wrong, not declared
70:         print i * i;
71:         print "\n";
72:     end do
73:
74:     if "string" > b then // wrong, type wrong
75:         print func(1, true); // wrong, param type wrong
76:     else
77:         print " a <= b \n"; // ok
78:     end if
79:
80:     if not true then // ok
81:         print func(1, 1); // ok
82:     else
83:         print " a <= b \n"; //ok
84:     end if
85:
86:     if func2() then // ok, func2 return boolean
87:         print "a+a \n";
88:     end if
89:
90:     if not func2() then // ok
91:         print func(1, 1); // ok
92:     else
93:         print " a <= b \n"; //ok
94:     end if
95:
96:     if not func() then // wrong, type wrong
97:         print func(1, 1); // ok
98:     else
99:         print " a <= b \n"; //ok
100:     end if
101:
102:     if d * 3 + 1 * c <> e * 4 mod 123 then // I think is ok
103:         print "test";
104:     end if
105:
106:     func(); // wrong, need 2 param, only have 0
107:
108:     func(1); // wrong, need 2 param, only have 1
109:
110:     func("asdf", 1); // wrong, need 2 param, have 2, but type wrong
111:
112:     print func(2 * 4, 3) * a * arr[0]; // ok, need 2 param, have 2
113:
114: end
115: end iamch15542IfandWhile
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
a                                parameter  1(local)   integer
b                                parameter  1(local)   integer
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
d                                variable   1(local)   integer
e                                variable   1(local)   integer
arr                              variable   1(local)   integer [4]
i                                variable   1(local)   integer
aaaa                             constant   1(local)   integer          2
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
iamch15542IfandWhile             program    0(global)  void
a                                variable   0(global)  integer
b                                variable   0(global)  string
c                                variable   0(global)  real
int                              variable   0(global)  integer
func                             function   0(global)  integer          integer, integer
func2                            function   0(global)  boolean
func3                            function   0(global)  void
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 18, column 12: return 'integer' from a function with return type 'boolean'
        return a; // wrong, type need to be boolean
               ^
<Error> Found in line 33, column 5: there is an over array subscript
        aaaa[0] := 1 + 0.2 + true; // wrong, left over array subscript, right bool type wrong
        ^
<Error> Found in line 33, column 24: invalid operands to binary operation '+' ('real' and 'boolean')
        aaaa[0] := 1 + 0.2 + true; // wrong, left over array subscript, right bool type wrong
                           ^
<Error> Found in line 37, column 23: assigning to 'integer' from incompatible type 'string'
        int := "stringgg" + "stringg"; // wrong, because right need be integer
                          ^
<Error> Found in line 39, column 10: array assignment is not allowed
        e := arr; // wrong, arr can not assign
             ^
<Error> Found in line 44, column 27: use of undeclared identifier 'decccc'
        print 1 + 1 + 1 + 1 * decccc; // wrong, no declared
                              ^
<Error> Found in line 45, column 11: variable reference of print statement must be scalar type
        print func3(); // type wrong
              ^
<Error> Found in line 46, column 19: used of undeclared function 'func4'
        print "ccc" + func4(); // wrong func4 no declared
                      ^
<Error> Found in line 49, column 10: invalid operands to binary operation '>' ('integer' and 'string')
        if a > b then // wrong, integer and string
             ^
<Error> Found in line 50, column 15: variable reference of print statement must be scalar type
            print arr; // wrong, can not print array
                  ^
<Error> Found in line 63, column 8: use of undeclared identifier 'VarIsUndeclared'
        if VarIsUndeclared > b then // wrong, not declared
           ^
<Error> Found in line 69, column 11: use of undeclared identifier 'VarIsUndeclared'
        while VarIsUndeclared <= 10 do // wrong, not declared
              ^
<Error> Found in line 74, column 17: invalid operands to binary operation '>' ('string' and 'string')
        if "string" > b then // wrong, type wrong
                    ^
<Error> Found in line 75, column 23: incompatible types passing 'boolean' to parameter of type 'integer'
            print func(1, true); // wrong, param type wrong
                          ^
<Error> Found in line 96, column 12: too few/much arguments to function invocation
        if not func() then // wrong, type wrong
               ^
<Error> Found in line 106, column 5: too few/much arguments to function invocation
        func(); // wrong, need 2 param, only have 0
        ^
<Error> Found in line 108, column 5: too few/much arguments to function invocation
        func(1); // wrong, need 2 param, only have 1
        ^
<Error> Found in line 110, column 10: incompatible types passing 'string' to parameter of type 'integer'
        func("asdf", 1); // wrong, need 2 param, have 2, but type wrong
             ^
