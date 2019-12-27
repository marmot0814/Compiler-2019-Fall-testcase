1: //&T-
2: //&D-
3: ReadStatement;
4: begin
5:     var arr: array 1 to 10 of array 10 to 100 of integer;
6:     var constant: 010;
7: 
8:     read arr[1];
9:     read constant;
10: 
11:     for i := 10 to 40 do
12:     begin
13:         read i;
14:         i := 10;
15:     end
16:     end do
17: 
18:     read i;
19: end
20: end ReadStatement
<Error> Found in line 8, column 10: variable reference of read statement must be scalar type
        read arr[1];
             ^
<Error> Found in line 9, column 10: variable reference of read statement cannot be a constant variable reference
        read constant;
             ^
<Error> Found in line 13, column 14: the value of loop variable cannot be modified inside the loop
            read i;
                 ^
<Error> Found in line 14, column 9: the value of loop variable cannot be modified inside the loop
            i := 10;
            ^
<Error> Found in line 18, column 10: use of undeclared identifier 'i'
        read i;
             ^
