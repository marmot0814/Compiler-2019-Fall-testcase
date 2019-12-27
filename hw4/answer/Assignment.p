1: //&T-
2: //&D-
3: Assignment;
4: 
5: begin
6:     var const : 10;
7:     var arr : array 1 to 20 of array 430 to 777 of real;
8:     var float : real;
9: 
10:     const := "SSLAB";
11:     arr := 1.23;
12:     ff := arr[12];
13:     float := arr[10];
14:     float := arr[10][11];
15: end
16: end Assignment
<Error> Found in line 10, column 5: cannot assign to variable 'const' which is a constant
        const := "SSLAB";
        ^
<Error> Found in line 11, column 5: array assignment is not allowed
        arr := 1.23;
        ^
<Error> Found in line 12, column 5: use of undeclared identifier 'ff'
        ff := arr[12];
        ^
<Error> Found in line 13, column 14: array assignment is not allowed
        float := arr[10];
                 ^
