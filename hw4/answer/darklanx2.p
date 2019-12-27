1: //&T-
2: darklanx2Error;
3: // no global declaration(s)
4: 
5: func(a : integer ; b : array 1 to 2 of array 2 to 4 of real) : boolean;
6: begin
7:     var c : "hello world!";
8:     begin
9:         var d : real;
10:         return (b[1][4] >= 1.0);
11:     end
12: end
13: end func
14: 
15: begin
16:     var a : integer;
17:     var b : array 1 to 2 of array 2 to 4 of real;
18:     print func(a, func(a, func(a,b)));
19: end
20: end darklanx2Error
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
d                                variable   2(local)   real             
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
a                                parameter  1(local)   integer          
b                                parameter  1(local)   real [1][2]      
c                                constant   1(local)   string           "hello world!"
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
a                                variable   1(local)   integer          
b                                variable   1(local)   real [1][2]      
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
darklanx2Error                   program    0(global)  void             
func                             function   0(global)  boolean          integer, real [1][2]
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 18, column 27: incompatible types passing 'boolean' to parameter of type 'real [1][2]'
        print func(a, func(a, func(a,b)));
                              ^
<Error> Found in line 2, column 1: program name must be the same as filename
    darklanx2Error;
    ^
