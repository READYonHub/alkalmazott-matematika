t=[15 46 74 105 135 166 196 227 258 288 319 349]';
f=[-1.7 0.1 5.2 10.3 15.8 18.9 21.1 20.3 16.1 10.2 4.2 0.5]';

A=[ones(12,1), cos(2*pi*(t-14)/365)]

x=(A'*A\A'*f)

%abrazolas

%abrazolasi tartomany
xx=linspace(0,365);
%fuggveny
F= @(t) x(1)+x(2)*cos(2*pi*(t-14)/365);

figure(1);
plot(t,f,'o',xx,F(xx))

%most masodfokut illesztek

A=[ones(12,1), t, t.^2];

x=(A'*A\A'*f)
F= @(t) x(1) + x(2)*t + x(3)*t.^2;

figure(2);
plot(t,f,"*",xx, F(xx))
