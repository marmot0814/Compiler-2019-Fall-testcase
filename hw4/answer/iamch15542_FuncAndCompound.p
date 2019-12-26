1: //&T-
2: FuncAndCompound;
3:
4:
5: var arrLowBiggerUp : boolean;
6: var arrLowBiggerUp : array 55146 to 80 of integer; // wrong, redeclared
7:
8: func(a : integer; b : array 1 to 2 of array 4 to 8 of integer ) : integer;
9: begin
10:     var testvar : integer;
11:     begin
12:         var testvar2 : integer;
13:         testvar2 := testvar; // ok, cant use
14:     end
15: end
16: end func
17:
18: func2();
19: begin
20:     return abc; // wrong, undeclared
21: end
22: end func2
23:
24: func2(a, b:integer; a :boolean) : integer; // wrong, func2 is redeclared, a is redeclared
25: begin
26:     var d : integer;
27:     var d : boolean; // wrong, redeclare
28: end
29: end func2
30:
31: func3(c, d:integer; c :boolean) : integer; // wrong, param is redeclared
32: begin
33:     var f : integer;
34:     var f : boolean; // wrong, redeclare
35: end
36: end func3
37:
38: func4(a : array 1 to 4 of boolean) : integer;
39: begin
40:     var d : integer;
41:     var d : boolean; // wrong, redeclare
42: end
43: end func4
44:
45: begin
46:     var k : array 2 to 3 of array 6 to 10 of integer;
47:     var k1 : array 1 to 3 of array 6 to 10 of integer;
48:     var k2 : array 1 to 4 of boolean;
49:     var k3 : array 2 to 3 of array 1 to 4 of boolean;
50:     var k4 : array 2 to 3 of array 1 to 5 of boolean;
51:
52:     print c; // wrong, undeclared
53:     print func2(); // wrong, type is void
54:     print func(1, k); // ok, arr is same
55:     print func(true, k1); // wrong, type wrong, size no same
56:     print func(1, k1); // wrong, size no same
57:     print func(1, k2); // wrong, size no same
58:     print func4(k2); // ok is same
59:     print func4(k1); // wrong
60:     print func4(k3[3]); // I think it is ok
61:     print func4(k4[10]); // wrong, size not same
62: end
63: end FuncAndCompound
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
testvar2                         variable   2(local)   integer
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
a                                parameter  1(local)   integer
b                                parameter  1(local)   integer [1][4]
testvar                          variable   1(local)   integer
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
a                                parameter  1(local)   integer
b                                parameter  1(local)   integer
d                                variable   1(local)   integer
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
c                                parameter  1(local)   integer
d                                parameter  1(local)   integer
f                                variable   1(local)   integer
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
a                                parameter  1(local)   boolean [3]
d                                variable   1(local)   integer
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
k                                variable   1(local)   integer [1][4]
k1                               variable   1(local)   integer [2][4]
k2                               variable   1(local)   boolean [3]
k3                               variable   1(local)   boolean [1][3]
k4                               variable   1(local)   boolean [1][4]
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute
--------------------------------------------------------------------------------------------------------------
FuncAndCompound                  program    0(global)  void
arrLowBiggerUp                   variable   0(global)  boolean
func                             function   0(global)  integer          integer, integer [1][4]
func2                            function   0(global)  void
func3                            function   0(global)  integer          integer, integer, boolean
func4                            function   0(global)  integer          boolean [3]
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 6, column 5: symbol 'arrLowBiggerUp' is redeclared
    var arrLowBiggerUp : array 55146 to 80 of integer; // wrong, redeclared
        ^
<Error> Found in line 20, column 12: use of undeclared identifier 'abc'
        return abc; // wrong, undeclared
               ^
<Error> Found in line 24, column 1: symbol 'func2' is redeclared
    func2(a, b:integer; a :boolean) : integer; // wrong, func2 is redeclared, a is redeclared
    ^
<Error> Found in line 24, column 21: symbol 'a' is redeclared
    func2(a, b:integer; a :boolean) : integer; // wrong, func2 is redeclared, a is redeclared
                        ^
<Error> Found in line 27, column 9: symbol 'd' is redeclared
        var d : boolean; // wrong, redeclare
            ^
<Error> Found in line 31, column 21: symbol 'c' is redeclared
    func3(c, d:integer; c :boolean) : integer; // wrong, param is redeclared
                        ^
<Error> Found in line 34, column 9: symbol 'f' is redeclared
        var f : boolean; // wrong, redeclare
            ^
<Error> Found in line 41, column 9: symbol 'd' is redeclared
        var d : boolean; // wrong, redeclare
            ^
<Error> Found in line 52, column 11: use of undeclared identifier 'c'
        print c; // wrong, undeclared
              ^
<Error> Found in line 53, column 11: variable reference of print statement must be scalar type
        print func2(); // wrong, type is void
              ^
<Error> Found in line 55, column 16: incompatible types passing 'boolean' to parameter of type 'integer'
        print func(true, k1); // wrong, type wrong, size no same
                   ^
<Error> Found in line 55, column 22: incompatible types passing 'integer [2][4]' to parameter of type 'integer [1][4]'
        print func(true, k1); // wrong, type wrong, size no same
                         ^
<Error> Found in line 56, column 19: incompatible types passing 'integer [2][4]' to parameter of type 'integer [1][4]'
        print func(1, k1); // wrong, size no same
                      ^
<Error> Found in line 57, column 19: incompatible types passing 'boolean [3]' to parameter of type 'integer [1][4]'
        print func(1, k2); // wrong, size no same
                      ^
<Error> Found in line 59, column 17: incompatible types passing 'integer [2][4]' to parameter of type 'boolean [3]'
        print func4(k1); // wrong
                    ^
<Error> Found in line 61, column 17: incompatible types passing 'boolean [4]' to parameter of type 'boolean [3]'
        print func4(k4[10]); // wrong, size not same
                    ^
