t=[0 1 1 2 3]; % meresi pont
f=[1/2 1 3/2 2 7/2]';

%matrix


A = [ones(5,1), t']
% 17/52 \ 51/52
x=(A'*A)\A'*f


%abrazolas
figure; % keret, vagyis a plusz felugro ablak
plot(t,f,'*') % a plot egy rajz amit kirajzolok a figurera

%egyenes kirajzolasa

%eloszor definialni kell egy tartomany amire rajzolni szeretnek
% vektort general
xx = linspace(-1,5);
F = x(1) + x(2)*xx;
% az elozo plotra ra rajzol
hold on;
plot(xx,F);
