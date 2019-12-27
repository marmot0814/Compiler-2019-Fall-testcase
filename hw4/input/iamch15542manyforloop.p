//&T-
iamch15542manyforloop;

// global declartion
var CanUseInForLoop : integer;

begin

    var compoundvar : integer;
    for i := 1 to 10 do
        compoundvar := 10; // I think it is ok
    end do 


    for idx := 1 to 1150 do
    begin
        CanUseInForLoop := 10;   // can use
        for j := 2 to 10 do
            CanUseInForLoop := j;   // can give referenced
            begin
                var CanUseInForLoop : boolean;
            end
        end do
        for CanUseInForLoop := 1 to 133 do // ok
        end do
        for idx := 1 to 133 do // wrong
        end do
    end
    end do
end
end iamch15542manyforloop
