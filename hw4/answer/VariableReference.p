1: //&T-
2: //&D-
3: VariableReference;
4: 
5: func(a: integer);
6: begin
7:     var arr: array 1 to 30 of integer;
8: 
9:     if a = 55146 then
10:         print arrrrrrr["SSLAB"]["No.1"];
11:     end if
12: 
13:     if a = 80 then
14:         print arr[1.0];
15:     end if
16: 
17:     print arr[80][55146];
18: end
19: end func
20: 
21: begin
22:     func(10);
23: end
24: end VariableReference
<Error> Found in line 10, column 15: use of undeclared identifier 'arrrrrrr'
            print arrrrrrr["SSLAB"]["No.1"];
                  ^
<Error> Found in line 14, column 19: index of array reference must be an integer
            print arr[1.0];
                      ^
<Error> Found in line 17, column 11: there is an over array subscript
        print arr[80][55146];
              ^
