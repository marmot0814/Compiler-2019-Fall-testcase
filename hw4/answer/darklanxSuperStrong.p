1: //&T-
2: //&D-
3: darklanxSuperStrong;
4: 
5: 
6: begin
7:     var a:2;
8:     var b: array 2 to 5 of array 1 to 10 of integer;
9:     var c: array 2 to 5 of array 1 to 10 of integer;
10:     a := 1+0.2 + true;
11:     b[0] := c[0];
12:     b[0][1] := c[0];
13:     a[0] := 1+ 0.2+true;
14:     
15: end
16: end darklanxSuperStrong
<Error> Found in line 10, column 16: invalid operands to binary operation '+' ('real' and 'boolean')
        a := 1+0.2 + true;
                   ^
<Error> Found in line 10, column 5: cannot assign to variable 'a' which is a constant
        a := 1+0.2 + true;
        ^
<Error> Found in line 11, column 5: array assignment is not allowed
        b[0] := c[0];
        ^
<Error> Found in line 12, column 16: array assignment is not allowed
        b[0][1] := c[0];
                   ^
<Error> Found in line 13, column 5: there is an over array subscript
        a[0] := 1+ 0.2+true;
        ^
<Error> Found in line 13, column 19: invalid operands to binary operation '+' ('real' and 'boolean')
        a[0] := 1+ 0.2+true;
                      ^
