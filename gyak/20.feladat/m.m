% --------------------------------MAGYARÁZat-------------------
A feladat a lebegőpontos számábrázolás elveire épül, és azt kéri, hogy határozzuk meg a 5.25 lebegőpontos szám jobboldali szomszédját adott paraméterek mellett:
________________________________________
📌 Paraméterek:
•	Alap: a=2a = 2a=2 (bináris)
•	Mantissza (t): t=5t = 5t=5 jegy
•	Kitevő tartomány: k−=−3k_{-} = -3k−=−3, k+=4k_{+} = 4k+=4
________________________________________
🎯 Cél:
A 5.25 lebegőpontos szám jobboldali szomszédját keressük, vagyis azt a legkisebb számot, ami nagyobb 5.25-nél, és még ábrázolható ebben a lebegőpontos rendszerben.
________________________________________
🧮 Lépések:
1️⃣ 5.25 binárisan:
•	Egész része: 5 = 101
•	Tört rész: 0.25 = 0.01
•	Tehát:
5.25=101.0125.25 = 101.01_25.25=101.012 
2️⃣ Normalizált alak (1.jegyjegyjegy...)
Mozgatjuk a tizedespontot úgy, hogy 1 legyen az egészrész:
101.01=1.0101⋅22101.01 = 1.0101 \cdot 2^2101.01=1.0101⋅22 
Ez a normalizált bináris alak. A mantisszába befér pontosan 5 bit a t = 5 miatt.
________________________________________
3️⃣ Mantissza:
•	1.0101
(az "1." implicit, tehát a tényleges tárolt mantissza: 01010)
________________________________________
4️⃣ Mi a következő nagyobb szám?
A jobboldali szomszéd → mantisszát növeljük 1-gyel a legkisebb egységgel.
Mantissza: 01010 → következő: 01011
Ez a következő reprezentálható mantissza:
•	1.01011 binárisan
•	Ez szorozva 222^222-vel:
1.010112⋅22=101.01121.01011_2 \cdot 2^2 = 101.011_21.010112⋅22=101.0112 
________________________________________
5️⃣ Binárisból tizedestörtbe:
101.0112=4+1+0+0.25+0.125=5.375101.011_2 = 4 + 1 + 0 + 0.25 + 0.125 = \boxed{5.375}101.0112=4+1+0+0.25+0.125=5.375 
________________________________________
✅ VÁLASZ:
A 5.25 jobboldali szomszédja a megadott paraméterekkel:
5.375\boxed{5.375}5.375


%--------------------MEGOLDÁS--------------------
% Paraméterek
a = 2;          % Alap
t = 5;          % Mantissza hossza (bitek száma)
k_min = -3;
k_max = 4;

% Vizsgált szám
x = 5.25;

% Kiszámoljuk az eps_t értéket x környékén ebben a rendszerben
% Az eps az adott pontban a legkisebb megkülönböztethető növekedés

% 1. Normalizált alak: x = m * a^e
e = floor(log2(x));  % Kitevő
eps_t = a^(e - t + 1);  % Gépi epsilon az adott mantisszával

% Következő gépi szám
x_next = x + eps_t;

% Ellenőrzés: x_next még belefér-e a kitevőtartományba
if e > k_max
    error("A szám túllépi az ábrázolható tartományt.");
end

% Eredmény kiírás
fprintf("5.25 jobboldali szomszédja: %.5f\n", x_next)
