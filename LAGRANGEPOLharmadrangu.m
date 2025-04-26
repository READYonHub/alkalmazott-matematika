r=[-2, -1, 0, 2];
f=[-5, 3, 1, 15];

%hatulrol kell az eredmeny leolvasni
%ez a polinom atmeny a pontokon nem csak atmegy
p=polyfit(r,f,3)

r = [-2, -1, 0, 3]; % Adatok x tengelyen
f = [-5, 3, 1, 15]; % Adatok y tengelyen

p = polyfit(r, f, 3); % Harmadfokú interpoláció
disp('Polinom együtthatói:');
disp(p);

% Ábrázolás
xx = linspace(min(r), max(r), 100);
F_vals = polyval(p, xx);

figure;
plot(r, f, 'ro', 'MarkerFaceColor', 'r'); % Eredeti pontok
hold on;
plot(xx, F_vals, 'b-', 'LineWidth', 2); % Polinom görbe
legend('Adatok', 'Illeszkedő harmadfokú polinom');
title('Polinom interpoláció');
xlabel('x');
ylabel('f(x)');
grid on;
hold off;

%L3(x) = 1-3x!1*x^2+2*x^3

p2=polyfit(r,f,2);
yy2=polyval(p2,xx);
yy=F_vals
figure;
plot(r,f,"*",xx,yy,xx,yy2)