1: //&T-
2: binopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinop123;
3: 
4: funcfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfunc1();
5: begin
6: end
7: end funcfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfunc
8: 
9: begin
10:     var intArr: array 1 to 2 of array 2 to 3 of integer;
11:     var realArr: array 1 to 2 of array 2 to 3 of real;
12:     print intArr mod realArr;
13:     print intArr[0][0] mod realArr[0][0];
14:     print intArr[0][0] - realArr[0][0];
15:     print intArr[0][0] / realArr[0][0];
16:     print intArr[0][0] + realArr[0][0];
17:     print intArr[0][0] * realArr[0][0];
18:     print realArr[0][0] * intArr[0][0];
19:     print true * false;
20:     print true mod 1*0.9;
21:     print true mod 1 mod 0.9;
22:     print true mod (1 mod 0.9);
23:     print funcfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfunc12();
24: end
25: end binopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinop
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
intArr                           variable   1(local)   integer [1][1]              
realArr                          variable   1(local)   real [1][1]                 
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
binopbinopbinopbinopbinopbinopbi program    0(global)  void                        
funcfuncfuncfuncfuncfuncfuncfunc function   0(global)  void                        
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 12, column 18: invalid operands to binary operation 'mod' ('integer [1][1]' and 'real [1][1]')
        print intArr mod realArr;
                     ^
<Error> Found in line 13, column 24: invalid operands to binary operation 'mod' ('integer' and 'real')
        print intArr[0][0] mod realArr[0][0];
                           ^
<Error> Found in line 19, column 16: invalid operands to binary operation '*' ('boolean' and 'boolean')
        print true * false;
                   ^
<Error> Found in line 20, column 16: invalid operands to binary operation 'mod' ('boolean' and 'integer')
        print true mod 1*0.9;
                   ^
<Error> Found in line 21, column 16: invalid operands to binary operation 'mod' ('boolean' and 'integer')
        print true mod 1 mod 0.9;
                   ^
<Error> Found in line 22, column 23: invalid operands to binary operation 'mod' ('integer' and 'real')
        print true mod (1 mod 0.9);
                          ^
<Error> Found in line 23, column 11: variable reference of print statement must be scalar type
        print funcfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfuncfunc12();
              ^
<Error> Found in line 2, column 1: program name must be the same as filename
    binopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinopbinop123;
    ^
