% ----------------------FELADAT----------------------

% Adatok definiálása
x = [-4, -3, 0, 2, 3, 4]; % x értékek
f = [4071, 996, 3, -159, -1116, -4513]; % f(x) értékek

% Polinom illesztése (minimális fokszám)
p = polyfit(x, f, length(x)-1)

% Az elsőfokú tag együtthatójának meghatározása
linear_coeff = p(end-1); % Az x-es tag együtthatója

% Polinom értékének kiszámítása x = -1-nél
f_at_minus1 = polyval(p, -1);

% Eredmények kiírása
disp(['Az elsőfokú tag együtthatója: ', num2str(linear_coeff)]);
disp(['A polinom értéke -1-nél: ', num2str(f_at_minus1)]);



% ----------------------MAGYARÁZAT----------------------
A MATLAB polyfit függvény segítségével meghatározhatjuk a polinom együtthatóit.

matlab
% Adatok definiálása
x = [-4, -3, 0, 2, 3, 4]; % x értékek
f = [4071, 996, 3, -159, -1116, -4513]; % f(x) értékek

% Polinom illesztése (minimális fokszám)
p = polyfit(x, f, length(x)-1);

% Az elsőfokú tag együtthatójának meghatározása
linear_coeff = p(end-1); % Az x-es tag együtthatója

% Polinom értékének kiszámítása x = -1-nél
f_at_minus1 = polyval(p, -1);

% Eredmények kiírása
disp(['Az elsőfokú tag együtthatója: ', num2str(linear_coeff)]);
disp(['A polinom értéke -1-nél: ', num2str(f_at_minus1)]);
2. Mit csinál ez a kód és miért?
📌 Adatok beállítása
matlab
x = [-4, -3, 0, 2, 3, 4]; % x értékek
f = [4071, 996, 3, -159, -1116, -4513]; % f(x) értékek
🔹 Ezek az adatok az adott táblázatból származnak.

📌 Polinom illesztése
matlab
p = polyfit(x, f, length(x)-1);
🔹 Ez a minimális fokszámú polinomot illeszti az adatokra. 🔹 A length(x)-1 a polinom fokszámát adja meg (ha 6 adatpont van, akkor ötödik fokú lesz).

📌 Az elsőfokú tag együtthatója
matlab
linear_coeff = p(end-1);
🔹 A polyfit visszaad egy együttható vektort, ahol a legnagyobb fokú tag együtthatója az első elem. 🔹 Az x-es tag együtthatója a második utolsó elem (p(end-1)).

📌 A polinom értéke x = -1-nél
matlab
f_at_minus1 = polyval(p, -1);
🔹 A polyval(p, -1) kiszámítja a polinom értékét x = -1-nél.

📌 Az eredmény kiírása
matlab
disp(['Az elsőfokú tag együtthatója: ', num2str(linear_coeff)]);
disp(['A polinom értéke -1-nél: ', num2str(f_at_minus1)]);
🔹 Kiírja a számított együtthatót és a helyettesítési értéket.