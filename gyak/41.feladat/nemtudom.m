%{

    Egy modell akkor lineáris az ismeretlen paraméterekre nézve, ha: ✔ Az együtthatók csak elsőfokúak és nem szerepelnek más függvények argumentumában. ✔ Az együtthatók nem szorzódnak össze egymással. ✔ Az együtthatók nem szerepelnek hatványban, törtben vagy logaritmusban.
%}


% Szimbolikus változók létrehozása
syms x1 x2 x3 t

% Modellek definiálása
F1 = x1*t + x2 / (x3 + t);  % a válasz (nemlineáris)
F2 = x1 + 1 / (1 + x2*log(t)) + x3*t^2;  % b válasz (nemlineáris)
F3 = x1*log(1 + x2*t) + x3*t^2;  % c válasz (nemlineáris)
F4 = x1*log(1 / (1 + t^2)) + x2 + x3*t^2;  % d válasz (lineáris)
F5 = x1*exp(-t) + x2*t^2 + x3;  % e válasz (lineáris)

% Ellenőrzés: az együtthatók lineárisak-e?
linear_check = [islinear(F1, [x1, x2, x3]), islinear(F2, [x1, x2, x3]), ...
                islinear(F3, [x1, x2, x3]), islinear(F4, [x1, x2, x3]), ...
                islinear(F5, [x1, x2, x3])];

% Eredmények kiírása
disp('Lineáris-e az ismeretlenekre nézve? (1=True, 0=False)');
disp(['a: ', num2str(linear_check(1))]);
disp(['b: ', num2str(linear_check(2))]);
disp(['c: ', num2str(linear_check(3))]);
disp(['d: ', num2str(linear_check(4))]);
disp(['e: ', num2str(linear_check(5))]);
