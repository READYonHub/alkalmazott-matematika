% Adatok beállítása
t = [0.1, 0.3, 0.7, 0.8, 0.9];
f = [3.7, 3.57, 1.23, 0.55, 0.03];

% Mátrix létrehozása
X = [ones(size(t)); sin(pi * t); cos(pi * t)]';

% Lineáris rendszer megoldása
params = X \ f'; % x₁, x₂, x₃ értékei

% Együtthatók kiolvasása
x1 = params(1);
x2 = params(2);
x3 = params(3);

% Modell kiértékelése t = 0.2-nél
t_val = 0.2;
F_t_val = x1 + x2 * sin(pi * t_val) + x3 * cos(pi * t_val);

% Eredmények kiírása
disp(['x1 értéke: ', num2str(round(x1, 4))]);
disp(['x2 értéke: ', num2str(round(x2, 4))]);
disp(['x3 értéke: ', num2str(round(x3, 4))]);
disp(['F(0.2) értéke: ', num2str(round(F_t_val, 2))]);
