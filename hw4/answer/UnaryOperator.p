1: //&T-
2: //&D-
3: UnaryOperator;
4: begin
5:     var int : integer;
6:     var arr : array 1 to 10 of array 1 to 100 of boolean;
7: 
8:     print -int;
9:     print not arr[4][23];
10:     print not arr;
11: end
12: end UnaryOperator
<Error> Found in line 10, column 11: invalid operand to unary operation 'not' ('boolean [9][99]')
        print not arr;
              ^
