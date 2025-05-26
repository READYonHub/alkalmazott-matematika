% -----------------nemlineáris regressziós probléma-----------------------------------

% Adatok megadása
t = [3, 4, 5, 7, 9]; % t értékek
f = [1.18, 1.02, 1.01, 0.99, 0.91]; % f(t) értékek
size(t)
% Lineáris regresszióhoz átalakítás
X = [ones(size(t)); 1 ./ t]' % Modell: [1, 1/t] mátrix
Y = f' % Célértékek

% Paraméterek meghatározása
params = X \ Y % Megoldás a normál egyenletekkel
a = params(1)
b = params(2)

% Modell értéke t = 4.5-nél
t_val = 4.5
F_t_val = a + b / t_val

% Eredmények kiírása
disp(['a értéke: ', num2str(round(a, 2))]);
disp(['b értéke: ', num2str(round(b, 2))]);
disp(['F(4.5) értéke: ', num2str(round(F_t_val, 2))]);


% -----------------------magyarázat-----------------------------------
t = [3,4,5,7,9]
f = [1.18,1.02,1.01,0.99,0.91]
Ez az adatbevitel:
t → időpontok,
f → hozzájuk tartozó 
𝐹
(
𝑡
)
F(t) értékek.

matlab
Kód másolása
X = [ones(size(t)); 1./t]'
🔍 Ez trükkös, de jó megoldás!

1./t → kiszámolja az 
𝑥
𝑖
=
1
𝑡
𝑖
x 
i
​
 = 
t 
i
​
 
1
​
  értékeket.

ones(size(t)) → egy olyan vektor, amely csak 1-esekből áll (ez lesz az 'a' szorzója).

Az egészet [...]-be rakod és '-tel transzponálod, így kapsz egy 5×2-es mátrixot, ahol minden sor: [1, 1/t_i].

Példa:

matlab
Kód másolása
X =
    1.0000    0.3333
    1.0000    0.2500
    1.0000    0.2000
    1.0000    0.1429
    1.0000    0.1111
Tökéletes! Ez a regressziós mátrix.

matlab
Kód másolása
Y = f'
Ez csak a vektor transzponálása (oszlopvektor kell a \ operátorhoz).

matlab
Kód másolása
params = X \ Y
a = params(1)
b = params(2)
A \ megoldja a lineáris egyenletet a legkisebb négyzetek értelemben.

A params vektor: 
[
𝑎
;
𝑏
]
[a;b]

matlab
Kód másolása
t_val = 4.5
F_T_val = a + b/t_val
Ez kiszámolja az illesztett modell értékét a 
𝑡
=
4.5
t=4.5 helyen.

matlab
Kód másolása
disp(round(F_T_val,2))
Ez kiírja a végeredményt két tizedesjegyre kerekítve.