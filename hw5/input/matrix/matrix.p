//&S-
//&T-
//&D-

matrix;

var gm : array 100 to 110 of array 20 to 30 of integer;

mul(a : array 0 to 10 of array 0 to 10 of integer; b : array 0 to 10 of array 0 to 10 of integer);
begin
    var res : array 0 to 10 of array 0 to 10 of integer;
    for i := 0 to 10 do
        for j := 0 to 10 do
            res[i][j] := 0;
        end do
    end do
    for i := 0 to 10 do
        for j := 0 to 10 do
            for k := 0 to 10 do
                res[i][j] := res[i][j] + a[i][k] * b[k][j];
            end do
        end do
    end do
    for i := 0 to 10 do
        for j := 0 to 10 do
            print res[i][j];
        end do
    end do
end
end mul

begin
    var lm : array 40 to 50 of array 10 to 20 of integer;
    for i := 100 to 110 do
        for j := 20 to 30 do
            read gm[i][j];
        end do
    end do
    for i := 40 to 50 do
        for j := 10 to 20 do
            read lm[i][j];
        end do
    end do
    mul(gm, lm);
end
end matrix
