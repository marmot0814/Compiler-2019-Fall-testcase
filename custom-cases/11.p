/**
 * err5.p: LHS of assignment cannot be the result of funcion invocation
 */
//&T-
correct;

func():integer;
begin
        begin
            return 321;
            return 00123;
            return -123;
            return -0.123;
            return -0.123 + 00123 + 12 + a[123][0][-12];
        end
end
end func

begin
    a := 1 + 1+ (3 * 4) + 5 * 5 - 5 - -5; 
    c := b + c + d + e; 
    b := 1+1+(3*4)+5*5-5 - - -5;
    
end
end correct
