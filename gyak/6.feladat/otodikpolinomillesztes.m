% ------------------------FELADAT------------------------

% Adatok definiálása
T = [-3, -2, 0, 1, 2, 3]; % T vektor (független változó)
F = [5, 8, 2, -1, 0, 7]; % F vektor (függő változó)

% Polinom illesztése (ötödik fokú)
P = polyfit(T, F, 5);

% Polinom értékeinek kiszámítása az adott T értékeken
F_approx = polyval(P, T);

% Eredmény kiírása
disp('Illesztett polinom együtthatói:');
disp(P);
disp('Polinom értéke az adott T pontokban:');
disp(F_approx);

% x tengely értékek generálása az ábrázoláshoz
x_vals = linspace(min(T), max(T), 100);

% Illesztett polinom értékeinek kiszámítása
y_vals = polyval(P, x_vals);

% Ábrázolás
figure;
plot(T, F, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Eredeti pontok
hold on;
plot(x_vals, y_vals, 'b', 'LineWidth', 2); % Illesztett polinom
xlabel('T');
ylabel('F');
title('Polinom illesztés az adatokra');
legend('Adatpontok', 'Illesztett polinom');
hold off;


% --------------------MAGYArázat-------------------
Ez a probléma az ötödik fokú polinom illesztéséről szól a polyfit függvény segítségével. A cél az, hogy meghatározzuk, hogy az illesztett polinom teljesen megfelel-e az adatoknak vagy csak közelíti azokat.

1. MATLAB-kód a polinom illesztésére
matlab
% Adatok definiálása
T = [-3, -2, 0, 1, 2, 3]; % T vektor (független változó)
F = [5, 8, 2, -1, 0, 7]; % F vektor (függő változó)

% Polinom illesztése (ötödik fokú)
P = polyfit(T, F, 5);

% Polinom értékeinek kiszámítása az adott T értékeken
F_approx = polyval(P, T);

% Eredmény kiírása
disp('Illesztett polinom együtthatói:');
disp(P);
disp('Polinom értéke az adott T pontokban:');
disp(F_approx);
2. Mit jelent ez és miért csináljuk így?
📌 Adatok beállítása
matlab
T = [-3, -2, 0, 1, 2, 3]; % T vektor (független változó)
F = [5, 8, 2, -1, 0, 7]; % F vektor (függő változó)
🔹 Ez a két vektor tartalmazza az adatok (T, F) pontjait, amelyeket felhasználunk a polinom illesztéséhez. 🔹 T az x tengely értékei, független változóként. 🔹 F az adott x értékekhez tartozó függvényértékek.

📌 Polinom illesztése ötödik fokkal
matlab
P = polyfit(T, F, 5);
🔹 Ez az polyfit függvény, amely egy ötödik fokú polinomot illeszt az adatokra. 🔹 Az ötödik fokot az utolsó paraméter (5) adja meg. 🔹 P egy vektor, amely tartalmazza az illesztett polinom együtthatóit.

📌 Fontos megjegyzés:

Ha az adatok pontosan illeszkednek egy ötödik fokú polinomra, akkor az interpoláció tökéletes lesz.

Ha az adatok nem illeszthetők pontosan, akkor a polinom csak közelíti azokat.

📌 Polinom értékének kiszámítása az adott T pontokban
matlab
F_approx = polyval(P, T);
🔹 Ez a polyval függvény segítségével kiértékeli az illesztett polinomot a T pontokban. 🔹 F_approx tartalmazza az illesztett polinom becsült értékeit az adott T értékekre.

📌 Ha az illesztett értékek pontosan egyeznek az eredeti F értékekkel, akkor a polinom pontosan interpolálja az adatokat. 📌 Ha van eltérés, akkor az illesztés csak közelítő megoldás.

📌 Eredmény kiírása
matlab
disp('Illesztett polinom együtthatói:');
disp(P);
disp('Polinom értéke az adott T pontokban:');
disp(F_approx);
🔹 Kiírja az illesztett polinom együtthatóit. 🔹 Megmutatja, hogy az illesztett polinom milyen értékeket ad az T pontokban. 🔹 Ezzel eldönthetjük, hogy a polinom pontosan interpolálja-e az adatokat vagy csak közelíti.

4. Extra: Az illesztett polinom grafikus ábrázolása
Ha grafikusan is szeretnéd látni, akkor ezt a kódot használd:

matlab
% x tengely értékek generálása az ábrázoláshoz
x_vals = linspace(min(T), max(T), 100);

% Illesztett polinom értékeinek kiszámítása
y_vals = polyval(P, x_vals);

% Ábrázolás
figure;
plot(T, F, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Eredeti pontok
hold on;
plot(x_vals, y_vals, 'b', 'LineWidth', 2); % Illesztett polinom
xlabel('T');
ylabel('F');
title('Polinom illesztés az adatokra');
legend('Adatpontok', 'Illesztett polinom');
hold off;
🔹 Ez megmutatja az adatpontokat (piros pontok) és az illesztett polinomot (kék görbe). 🔹 Ha a kék görbe pontosan átmegy az összes piros ponton, akkor az interpoláció tökéletes. 🔹 Ha van eltérés, akkor az illesztés csak közelítő.