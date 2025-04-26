t=[0.1 0.5 1.2 1.5 2 2.1 2.4 3 3.2]';%t=9 darab
f=[-0.6 1.5 2.5 2.9 3.2 3.3 3.5 3.8 3.9]';

A = [ones(9,1), log(t)];
x = (A'*A \ (A'*f));

% abrazolas

xx = linspace(0,4);
F = @(t) x(1) + x(2)* log(t);
plot(t,f,'*', xx, F(xx));