

A = [1 1; 1 2; 1 3; 1 4];
b=[4 6 9 12]'
% vagy megadom így b = [3 1 -12]';

x=A\b
%A*x =b

%Gauss eliminacio

B = [3 5 -1; 6 7 6];
b = [4; -1];

y = B \b

%visszaellenőrzés. ha ugyanaz az eredmény jó
B * y 



A=[-4 -4 2; 2 7 3; 2 12 -5];
b=[-2; 6; -13];

x = A \ b;


D = [1 1; 1 2; 1 3; 1 4];
b=[4 6 9 12]'

x= D\b

D*x

%rang számítása3
rank(D)
rank([D b])
%nincs megoldása



