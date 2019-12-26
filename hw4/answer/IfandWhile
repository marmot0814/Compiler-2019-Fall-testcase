1: //&T-
2: IfandWhile;
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
32:
33:     c := a + 6.11111; // ok, because all is integer or real
34:     b := "stringgg" + "stringg"; // ok, because all is integer
35:     int := "stringgg" + "stringg"; // wrong, because right need be integer
36:     d := arr[0]; // ok, both are integer
37:     e := arr; // wrong, arr can not assign
38:     arr[0] := 123; // ok, both are integer
39:
40:     print 1 + d * ( c + 4 ); // ok
41:     print func(1, 1); // ok
42:     print 1 + 1 + 1 + 1 * decccc; // wrong, no declared
43:     print func3(); // type wrong
44:     print "ccc" + func4(); // wrong func4 no declared
45:
46:     // condition statement
47:     if a > b then // wrong, integer and string
48:         print arr; // ok, type correct
49:     else
50:         print " a <= b \n"; // ok
51:     end if
52:
53:     // while statement
54:     i := 1;
55:     while i <= 10 do
56:         print i * i;
57:         print "\n";
58:     end do
59:     // okkkkkkkkkkkkkkkkkkkkkkkkkkk
60:
61:     if VarIsUndeclared > b then // wrong, not declared
62:         print " a > b \n";
63:     else
64:         print " a <= b \n";
65:     end if
66:
67:     while VarIsUndeclared <= 10 do // wrong, not declared
68:         print i * i;
69:         print "\n";
70:     end do
71:
72:     if "string" > b then // wrong, type wrong
73:         print func(1, true); // ok
74:     else
75:         print " a <= b \n"; // ok
76:     end if
77:
78:     if not true then // ok
79:         print func(1, 1); // ok
80:     else
81:         print " a <= b \n"; //ok
82:     end if
83:
84:     if func2() then // ok, func2 return boolean
85:         print "a+a \n";
86:     end if
87:
88:     if not func2() then // ok
89:         print func(1, 1); // ok
90:     else
91:         print " a <= b \n"; //ok
92:     end if
93:
94:     if not func() then // wrong, type wrong
95:         print func(1, 1); // ok
96:     else
97:         print " a <= b \n"; //ok
98:     end if
99:
100:     if d * 3 + 1 * c <> e * 4 mod 123 then // I think is ok
101:         print "test";
102:     end if
103:
104:     func(); // wrong, need 2 param, only have 0
105:
106:     func(1); // wrong, need 2 param, only have 1
107:
108:     func("asdf", 1); // wrong, need 2 param, have 2, but type wrong
109:
110:     print func(2 * 4, 3) * a * arr[0]; // ok, need 2 param, have 2
111:
112: end
113: end IfandWhile
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
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
IfandWhile                       program    0(global)  void
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
<Error> Found in line 35, column 23: assigning to 'integer' from incompatible type 'string'
        int := "stringgg" + "stringg"; // wrong, because right need be integer
                          ^
<Error> Found in line 37, column 10: array assignment is not allowed
        e := arr; // wrong, arr can not assign
             ^
<Error> Found in line 42, column 27: use of undeclared identifier 'decccc'
        print 1 + 1 + 1 + 1 * decccc; // wrong, no declared
                              ^
<Error> Found in line 43, column 11: variable reference of print statement must be scalar type
        print func3(); // type wrong
              ^
<Error> Found in line 44, column 19: used of undeclared function 'func4'
        print "ccc" + func4(); // wrong func4 no declared
                      ^
<Error> Found in line 47, column 10: invalid operands to binary operation '>' ('integer' and 'string')
        if a > b then // wrong, integer and string
             ^
<Error> Found in line 61, column 8: use of undeclared identifier 'VarIsUndeclared'
        if VarIsUndeclared > b then // wrong, not declared
           ^
<Error> Found in line 67, column 11: use of undeclared identifier 'VarIsUndeclared'
        while VarIsUndeclared <= 10 do // wrong, not declared
              ^
<Error> Found in line 72, column 17: invalid operands to binary operation '>' ('string' and 'string')
        if "string" > b then // wrong, type wrong
                    ^
<Error> Found in line 94, column 12: too few/much arguments to function invocation
        if not func() then // wrong, type wrong
               ^
<Error> Found in line 104, column 5: too few/much arguments to function invocation
        func(); // wrong, need 2 param, only have 0
        ^
<Error> Found in line 106, column 5: too few/much arguments to function invocation
        func(1); // wrong, need 2 param, only have 1
        ^
<Error> Found in line 108, column 10: incompatible types passing 'string' to parameter of type 'integer'
        func("asdf", 1); // wrong, need 2 param, have 2, but type wrong
             ^
