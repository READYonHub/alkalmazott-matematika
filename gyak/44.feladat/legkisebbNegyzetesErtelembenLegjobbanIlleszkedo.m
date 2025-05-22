% Adatok megadása
t = [2, 6, 6, 10, 10];
f = [1.28, 0.95, 0.95, 0.87, 0.86];

% Mátrix létrehozása az illesztéshez
X = [ones(size(t)); 1 ./ t]';
Y = f';

% A paraméterek kiszámítása a legkisebb négyzetek módszerével
params = X \ Y; % Helyes osztás

% Az a és b értékek kiolvasása
a = params(1);
b = params(2);

% Modell értékének kiszámítása t = 1.5-nél
t_val = 1.5;
F_t_val = a + b / t_val;

% Eredmények kiírása
disp(['a értéke: ', num2str(round(a, 2))]);
disp(['b értéke: ', num2str(round(b, 2))]);
disp(['F(1.5) értéke: ', num2str(round(F_t_val, 2))]);
