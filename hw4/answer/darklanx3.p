1: //&T-
2: darklanx3;
3: // no global declaration(s)
4: 
5: 
6: begin
7:     var abcdefghabcdefghabcdefghabcdefghabcdefgh : integer;
8:     var b : array 1 to 2 of array 2 to 4 of real;
9:     print abcdefghabcdefghabcdefghabcdefghabcdefgh;
10:     print abcdefghabddcdefghabcdefghabcdefghabcdefgh;
11: end
12: end darklanx3
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
abcdefghabcdefghabcdefghabcdefgh variable   1(local)   integer                     
b                                variable   1(local)   real [1][2]                 
--------------------------------------------------------------------------------------------------------------
==============================================================================================================
Name                             Kind       Level      Type             Attribute  
--------------------------------------------------------------------------------------------------------------
darklanx3                        program    0(global)  void                        
--------------------------------------------------------------------------------------------------------------
<Error> Found in line 10, column 11: use of undeclared identifier 'abcdefghabddcdefghabcdefghabcdef'
        print abcdefghabddcdefghabcdefghabcdefghabcdefgh;
              ^
