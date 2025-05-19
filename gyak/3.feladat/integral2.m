% Kétdimenzióós határozott integrál számítása MATLAB-ban
%---------------------------- FELADAT ----------------------------%
f = @(x,y) ((sin(x+y).* exp(y)) ./ cos(x))

I = integral2(f, 0,1,1,2)

disp(['A kétdimenzióós határozott integrál értéke:', num2str(I)])

%---------------------------- MAGYARÁZAT ----------------------------%
Ez egy kétdimenziós határozott integrál, amelyet az integral2 függvénnyel számíthatunk ki MATLAB-ban.

1. MATLAB-kód az integrál kiszámításához
matlab
% Függvény definiálása
f = @(x, y) (sin(x + y) .* exp(y)) ./ cos(x);

% Kétdimenziós integrálás
I = integral2(f, 0, 1, 1, 2);

% Eredmény kiírása
disp(['Az integrál értéke: ', num2str(I)]);
🔹 Ez kiszámítja az integrál értékét MATLAB-ban, és az eredményt kiírja a konzolra.

2. Az integrált függvény ábrázolása
A következő kód kirajzolja a függvény felületét, hogy jobban megértsd az integrálási tartományt:

matlab
% x és y értékek generálása
[x_vals, y_vals] = meshgrid(linspace(0, 1, 50), linspace(1, 2, 50));

% Függvény értékeinek kiszámítása
z_vals = (sin(x_vals + y_vals) .* exp(y_vals)) ./ cos(x_vals);

% Ábrázolás
figure;
surf(x_vals, y_vals, z_vals);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('Az integrált függvény 3D ábrázolása');
colorbar;
🔹 Mit csinál ez? ✅ Megjeleníti a függvény 3D felületét, ahol az 
𝑥
 és 
𝑦
 tengelyek az integrálási tartományt adják. ✅ Színskála mutatja a függvény értékeit, így könnyebben értelmezhető. ✅ Ez segít vizuálisan elképzelni az integrált területet.