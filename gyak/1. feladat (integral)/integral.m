%---------------FELADAT-----------------

f = @(x) exp(x) .* sin(2*x)

I = integral(f,-Inf, 3)

disp(['Az integrál értéke:', I])

%{-------------------MAGYARÁZAT--------------------
    1. Függvény definiálása
matlab
f = @(x) exp(x) .* sin(2*x);
🔹 Mit csinál ez?

Ez egy anonim függvény (f), amely az x változót használja.

exp(x) → Ez az 
𝑒
𝑥
 exponenciális függvény.

sin(2*x) → Ez a 
sin
⁡
(
2
𝑥
)
 függvény.

.* → Az elemenkénti szorzás, ami szükséges MATLAB-ban ahhoz, hogy vektorosan is működjön.

Ezzel létrehoztunk egy függvényt, amelyet később integrálni fogunk!

2. Határozott integrál kiszámítása
matlab
I = integral(f,-Inf, 3);
🔹 Mit csinál ez?

Az integral MATLAB beépített függvénye numerikusan kiszámítja a határozott integrált.

-Inf → Az alsó határ -∞ (végtelen).

3 → A felső határ 3.

f → Az előzőleg definiált 
𝑒𝑥sin⁡(2𝑥)
 függvényt integrálja.

Ez MATLAB-ban numerikusan közelíti az integrál értékét!

3. Az eredmény kiírása
matlab
disp(['Az integrál értéke:', I]);
🔹 Ez mit csinál?

disp(...) → Az eredményt kiírja a konzolra.

['Az integrál értéke:', I] → Itt viszont van egy hibás rész, mert I egy szám, és így MATLAB hibát adhat.
    %}