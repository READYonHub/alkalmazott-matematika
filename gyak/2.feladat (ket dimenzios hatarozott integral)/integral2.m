%---------------------------- FELADAT ----------------------------%

f = @(x, y) x .* exp((y.^2)/2 - x.^2);

% Kétdimenziós integrálás (x és y szerint)
I = integral2(f, 0, 1, 1, 3);

% Eredmény kiírása
disp(['Az integrál értéke: ', num2str(I)]);


%---------------------------- MAGYARÁZAT ----------------------------%
1. Függvény definiálása
matlab
f = @(x, y) x .* exp((y.^2)/2 - x.^2);
🔹 Mi ez? Ez egy anonim függvény MATLAB-ban. Az anonim függvényeket az @ szimbólummal hozzuk létre, és nem szükséges őket külön fájlban tárolni.

🔹 Miért fontos? Ez a függvény a következő matematikai kifejezést reprezentálja:

𝑓(𝑥,𝑦)=𝑥𝑒𝑦22−𝑥2

🔹 Mit csinál az egyes részek?

x .* → Az x változót elemenként megszorozzuk.

exp(...) → Az exponenciális függvényt kiszámítjuk.

(y.^2)/2 - x.^2 → Ez a függvény kitevője, amely az integrálban szerepel.

.^2 → Pontosítás: A .^2 azt jelenti, hogy elemenként emeljük négyzetre, ami vektoros számításoknál fontos MATLAB-ban.

2. Az integrál kiszámítása
matlab
I = integral2(f, 0, 1, 1, 3);
🔹 Mi ez? Az integral2 MATLAB beépített függvénye, amely kétdimenziós határozott integrált számít numerikusan.

🔹 Miért fontos? A függvényben két változó van, ezért az integral2 függvényt kell használni a numerikus integrálásra.

🔹 Mit csinál?

Első két paraméter (0, 1): x alsó és felső határa (0-tól 1-ig).

Második két paraméter (1, 3): y alsó és felső határa (1-től 3-ig).

📌 MATLAB először az y szerint integrál, majd az így kapott eredményt az x szerint is integrálja.

3. Eredmény kiírása
matlab
disp(['Az integrál értéke: ', num2str(I)]);
🔹 Mi ez? Ez a parancs kiírja az integrál kiszámított értékét.

🔹 Miért van szükség rá? Ha nem írjuk ki, akkor MATLAB csak eltárolja az eredményt, de nem jeleníti meg a konzolon.

🔹 Mit csinál pontosan?

num2str(I) → A számot szöveggé alakítja, hogy a disp ki tudja írni.

disp(...) → Kiírja a MATLAB konzolra az eredményt.