%--------------------------Feladat 30--------------------------

% Mátrix és vektor definiálása
A = [1, 5, -2; 4, 21, -9; 0, -2, 2];
b = [2; 7; 2];

% Determináns kiszámítása
detA = det(A);
disp(['A mátrix determinánsa: ', num2str(detA)]);

% Rang meghatározása
rankA = rank(A);
rankAugmented = rank([A b]);

disp(['Az A mátrix rangja: ', num2str(rankA)]);
disp(['Az (A|b) bővített mátrix rangja: ', num2str(rankAugmented)]);

% Megoldások számának vizsgálata
if rankA < rankAugmented
    disp('Az egyenletrendszernek nincs megoldása (0 megoldás).');
elseif rankA == rankAugmented
    if rankA == size(A,2)
        disp('Az egyenletrendszernek egyetlen megoldása van (1 megoldás).');
    else
        disp('Az egyenletrendszernek végtelen sok megoldása van.');
    end
end


%---------------------------MAGYARÁZAT---------------------------

3. Mit csinál ez a kód és miért?
📌 Determináns számítása
matlab
detA = det(A);
🔹 Ha a determináns ≠ 0, akkor az A mátrix invertálható, és az egyenletrendszernek egy megoldása van. 🔹 Ha a determináns = 0, akkor a mátrix szinguláris, és további vizsgálat szükséges.

📌 Rang kiszámítása
matlab
rankA = rank(A);
rankAugmented = rank([A b]);
🔹 Az A mátrix rangja: Megmondja, hogy a mátrix oszlopai lineárisan függetlenek-e. 🔹 A bővített mátrix (A|b) rangja: Ha eltér az A rangjától, akkor az egyenletrendszer ellentmondásos, nincs megoldás.

📌 Megoldások számának vizsgálata
🔹 Ha rank(A) < rank([A b]) → nincs megoldás 🔹 Ha rank(A) = rank([A b]) és egyenlő az oszlopok számával → egyetlen megoldás 🔹 Ha rank(A) = rank([A b]), de kisebb az oszlopok számánál → végtelen sok megoldás