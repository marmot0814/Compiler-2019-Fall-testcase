1: //&T-
2: //&D-
3: PrintStatement;
4: begin
5:     var arr: array 1 to 10 of array 10 to 100 of integer;
6:     print arr[1][2];
7:     print arr[1];
8:     print arr;
9: end
10: end PrintStatement
<Error> Found in line 7, column 11: variable reference of print statement must be scalar type
        print arr[1];
              ^
<Error> Found in line 8, column 11: variable reference of print statement must be scalar type
        print arr;
              ^
