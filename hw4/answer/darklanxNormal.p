1: //&T-
2: darklanxNormal;
3: var i:integer;
4: 
5: func() :integer;
6: begin
7: end
8: end func
9: 
10: begin
11:     var int : integer;
12:     var a : array 1 to 10 of integer;
13:     print a[0.1 + 0.1];
14:     print a[1 + 0.1];
15: 
16:     for idx := 1 to 10 do
17:         if idx > (1 + 0.1) then
18:         end if 
19:         if idx > 1 + 0.1 then
20:         end if 
21:         if idx > 011 then
22:             while int > func do
23:                 while int > func() do
24:                     while int > i do
25:                     end do
26:                 end do
27:             end do
28:         end if
29:     end do 
30: end
31: end darklanxNormal
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
idx                              loop_var   2(local)   integer                     
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
int                              variable   1(local)   integer                     
a                                variable   1(local)   integer [9]                 
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
darklanxNormal                   program    0(global)  void                        
i                                variable   0(global)  integer                     
func                             function   0(global)  integer                     
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 13, column 17: index of array reference must be an integer
        print a[0.1 + 0.1];
                    ^
<Error> Found in line 14, column 15: index of array reference must be an integer
        print a[1 + 0.1];
                  ^
<Error> Found in line 22, column 25: use of undeclared identifier 'func'
                while int > func do
                            ^
