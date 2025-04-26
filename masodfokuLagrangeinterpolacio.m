F=@(x) exp(x) -sin(pi*x);

x =[0 0.5 1];
f =[F(0) F(0.5) F(1)];

%illeszteni egy lagrange polinomot
%harom pontra pont-1 et használunk mindig ezért lesz lagrange
p= polyfit(x,f,2);

xx=linspace(0,1);

figure;
plot(x,f,"o",xx,F(xx),'r',xx,polyval(p,xx),'g');