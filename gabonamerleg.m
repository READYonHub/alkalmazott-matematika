t=[1 15 20 28]';
f=[980 605 470 250]';

A=[ones(length(t),1), t];
x=(A'*A)\(A'*f)

%F(t) = 1008,4 - 27t
%t=?? F(t) =0

%F(t) =x1+x2*t =0=>t=-x1/x2

%t=0=>??F(o)

F= @(t) x(1)+x(2)*t;

t_elfogy= -x(1)/x(2)

F(1)

figure(1)
plot(t,f,'*')