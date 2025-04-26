t=[0 2 4 6 8 10 12]';
f=[3 4 5 5.5 6.5 7 8]';

A=[ones(length(t),1), t];

x= (A'*A)\(A'*f)
F= @(t) x(1) + x(2)*t;

%20 perc mulva:
 p20 = F(20)

 %kifejezem a t-t
 %t=-x1/-x2
 t0 = -x(1)/x(2)

 %mikor lesz 50 a t?

 t_50 = (50-x(1))/x(2)



figure(1);
plot(t,f,'o')

