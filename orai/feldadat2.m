


function y = megoldhatoE(A, b)
    % Mátrix rangvizsgálata, és annak eldöntése, hogy az egyenletrendszer
    % megoldható-e.

    A=[2 -3 1 1; -1 3 4 7];
    b=[0 5]'

    x = A \ b;

    rA = rank(A); % Az A mátrix rangja
    rAb = rank([A b]); % A kibővített mátrix rangja

    % rangok összehasonlítása
    if rA == rAb
        disp("Az egyenletrendszernek van megoldása");
        %size(A,1) visszaadja a sorok számát
        %size(A,2) visszaadja a sor oszlop számát, dimenziojat
        if rA == size(A, 2) % az egyetlen rendszer ismeretlennek száma
            disp("Egyértelmű megoldás van");
        else
            disp("Végtelen sok megoldás van");
        end
        y = true; % Van megoldás
    else
        disp("Nincs megoldás");
        y = false; % Nincs megoldás
    end


    %ellenorzes, ha visszaadja a b vektort akkor jo
    disp("Ellenőrzés:")
    A*x

    disp("rref:")
    rref(A,b)


    p=null(A,'r')


end
