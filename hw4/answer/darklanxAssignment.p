1: //&T-
2: darklanxAssignmentError;
3: 
4: func1(p1 : string; p2 : array 99 to 100 of integer) : real;
5: begin
6: end
7: end func1
8: 
9: func2():integer;
10: begin
11: end
12: end func3
13: 
14: begin
15:     var const : 10;
16:     var arr : array 1 to 20 of array 430 to 777 of real;
17:     var float : real;
18:     arr[0] := func1("123", arr);
19:     arr := func1("123", arr[0]);
20:     arr := func2();
21:     arr[1][-1] := func2();
22:     
23: end
24: end darklanxAssignmentError
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
p1                               parameter  1(local)   string                      
p2                               parameter  1(local)   integer [1]                 
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
const                            constant   1(local)   integer          10         
arr                              variable   1(local)   real [19][347]              
float                            variable   1(local)   real                        
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
darklanxAssignmentError          program    0(global)  void                        
func1                            function   0(global)  real             string, integer [1]
func2                            function   0(global)  integer                     
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 12, column 5: identifier at the end of function must be the same as identifier at the beginning of function
    end func3
        ^
<Error> Found in line 18, column 28: incompatible types passing 'real [19][347]' to parameter of type 'integer [1]'
        arr[0] := func1("123", arr);
                               ^
<Error> Found in line 18, column 5: array assignment is not allowed
        arr[0] := func1("123", arr);
        ^
<Error> Found in line 19, column 25: incompatible types passing 'real [347]' to parameter of type 'integer [1]'
        arr := func1("123", arr[0]);
                            ^
<Error> Found in line 19, column 5: array assignment is not allowed
        arr := func1("123", arr[0]);
        ^
<Error> Found in line 20, column 5: array assignment is not allowed
        arr := func2();
        ^
<Error> Found in line 2, column 1: program name must be the same as filename
    darklanxAssignmentError;
    ^
