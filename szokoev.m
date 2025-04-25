function return_value = szokoev(ev1, ev2)
    % Szökőévek keresése két paraméter között (ev1 és ev2)
    return_value = []; % Üres vektor inicializálása az eredményhez

    for e = ev1:ev2
        % Szökőév ellenőrzési feltétel
        if (mod(e, 4) == 0 && mod(e, 100) ~= 0) || mod(e, 400) == 0
            return_value = [return_value e]; % Szám hozzáadása az eredményhez
        end
    end




%muveletek vektorokkal

v1=[1 4 -8];
v2=-9:3;%vektort járbe, egy listát
%elso parameter a -9 a kezdőpont, a 4 a lépésköz, a 15 végpont
v3=-9:4:15;
v4=-2:-0.3:-6;

%transzponált
v6= v1'
v7=[-2 6 -7]

s=v1+v7

%p=v1*v7 iygy nem fog mukodni transzporálni kell

p=v1*v7'%matrix szorzás

%elemenkénti szprzás
p2=v1.*v7

p3=v1.^2

%mátrixok = mátrix is egy vektor

% ; a sorok tagolására szolgál
m = [1 3 4; -7 7 9; 0 1 -3]

m1=abs(m)

suma = sum(m)
suma2=sum(suma)


%mátrix transzponáltja
% oszlop sor lesz

m2 = m'


%determinans
determinans = det(m)

%inverz
inverz=inv(m)


I = m * inv(m)


E = ones(7)
%3x2 mátrix
E1 = ones(3,2)

O=zeros(2,4)






end

