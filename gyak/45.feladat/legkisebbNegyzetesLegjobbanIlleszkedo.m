% Adatok megadása
t = [3, 4, 5, 7, 9]; % t értékek
f = [1.18, 1.02, 1.01, 0.99, 0.91]; % f(t) értékek
size(t)
% Lineáris regresszióhoz átalakítás
X = [ones(size(t)); 1 ./ t]' % Modell: [1, 1/t] mátrix
Y = f' % Célértékek

% Paraméterek meghatározása
params = X \ Y % Megoldás a normál egyenletekkel
a = params(1)
b = params(2)

% Modell értéke t = 4.5-nél
t_val = 4.5
F_t_val = a + b / t_val

% Eredmények kiírása
disp(['a értéke: ', num2str(round(a, 2))]);
disp(['b értéke: ', num2str(round(b, 2))]);
disp(['F(4.5) értéke: ', num2str(round(F_t_val, 2))]);
