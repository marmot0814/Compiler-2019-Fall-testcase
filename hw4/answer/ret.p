1: //&T-
2: //&D-
3: ret;
4: 
5: func() : boolean;
6: begin
7:     var bool : array 1 to 10 of array 1 to 100 of boolean;
8:     return bool[1];
9: end
10: end func
11: 
12: begin
13:     return 10;
14: end
15: end ret
<Error> Found in line 8, column 12: return 'boolean [99]' from a function with return type 'boolean'
        return bool[1];
               ^
<Error> Found in line 13, column 5: program/procedure should not return a value
        return 10;
        ^
