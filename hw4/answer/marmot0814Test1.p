1: //&T-
2: marmot0814Test1;
3: func(a : integer ; b : integer ; c : integer) : boolean;
4: begin
5: end
6: end func
7: 
8: begin
9:     var a : array 1 to 10 of array 2 to 20 of integer;
10:     print a["str"+"str"][1+true];
11:     print a[1+true]["str"+"str"];
12: end
13: end marmot0814Test1
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
a                                parameter  1(local)   integer                     
b                                parameter  1(local)   integer                     
c                                parameter  1(local)   integer                     
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
a                                variable   1(local)   integer [9][18]             
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
marmot0814Test1                  program    0(global)  void                        
func                             function   0(global)  boolean          integer, integer, integer
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 10, column 27: invalid operands to binary operation '+' ('integer' and 'boolean')
        print a["str"+"str"][1+true];
                              ^
<Error> Found in line 10, column 18: index of array reference must be an integer
        print a["str"+"str"][1+true];
                     ^
<Error> Found in line 11, column 14: invalid operands to binary operation '+' ('integer' and 'boolean')
        print a[1+true]["str"+"str"];
                 ^
