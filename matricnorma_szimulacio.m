
%A egy matrix
%9. feladat
function n = matricnorma_szimulacio(A)

tmp = []
i=0;

    while i<10000
        %vektorok
        x=rand(1, length(A))';
        tmp=[tmp norm(A*x,1)/norm(x,1)];
        i=i+1;

    end

    n =max(tmp)

end