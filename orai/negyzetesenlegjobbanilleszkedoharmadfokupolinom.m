% (3) határozzuk meg az alábbi adatokat négyzetesen lejobban illeszkedő
% har,adfokú polinomot

% F(t) = x1+ x2*t + x3*t^2 +x4*t^3

t=[0.5 0.8 1.1 1.3 1.5 1.7 1.9 2.1 2.3]'; %t=9
f=[2.5 2.3 1.8 1.3 0.9 0.4 0.1 -0.05 -0.01]'; %transporálás

A = [ones(9,1), t, t.^2, t.^3];
x = (A'*A)\(A'*f)

% ábrázoljuk
% tartomanya 0-tól 3-ig
xx = linspace(0,3);

F = @(xx) x(1) + x(2)*xx + x(3)*xx.^2 + x(4)* xx.^3;

figure(1);

plot(t,f,'o', xx,F(xx))