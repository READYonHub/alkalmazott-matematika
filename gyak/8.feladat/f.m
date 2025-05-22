%----------------------------Feladat------------------------------
% Decimális szám
decimal_number = 0.12109375;

% Bináris alak kiszámítása
binary_str = ''; % Üres karakterlánc a bináris számnak
num = decimal_number;

while num > 0
    num = num * 2;
    if num >= 1
        binary_str = strcat(binary_str, '1');
        num = num - 1;
    else
        binary_str = strcat(binary_str, '0');
    end
    
    % Megállunk, ha 8 számjegyet kaptunk
    if length(binary_str) >= 8
        break;
    end
end

disp(['Bináris alak: 0.' binary_str]);



%-----------------------------MAGYARÁZAT-----------------------------------
A feladat célja a szám 0.12109375 normálalakjának meghatározása a következő paraméterekkel:

a = 2 (két alapú számrendszer)

t = 5 (a mantissza hosszában 5 jegy szerepel)

k₋ = -3, k₊ = 3 (a kitevő tartomány -3 és 3 között van)

1. A szám bináris alakja
Először 0.12109375 decimális számot átalakítjuk bináris formába:

0.12109375
10
=
0.00011111
2
2. Normalizált alak
A normalizált forma azt jelenti, hogy a számot 0.1xxxx alakban írjuk fel, ahol a tizedespontot úgy helyezzük el, hogy az első számjegy mindig 1 legyen.

Tehát:

0.00011111
2
=
2
−
3
×
0.11111
2
Mivel a mantissza hossza 5 számjegy (t = 5), az eredmény pontosan megfelel ennek.

3. Helyes válasz kiválasztása
Ha megnézzük a válaszlehetőségeket, az e válasz pontosan megegyezik a kapott normalizált formával:

✅ Helyes válasz: e. 
2
−
3
⋅
0.11111

🚀 Ha szeretnéd, próbáljuk ki MATLAB-ban is! 😊 Ha valami nem világos, kérdezz bátran! 📊

vezzes le minden számítást hogy jobb jegyzetet készíthessek
Természetesen! Lépésről lépésre végigvezetlek az összes szükséges számításon, hogy pontos jegyzetet készíthess.

1. A szám átváltása bináris formába
A kiinduló számunk:

0.12109375
10
Ezt bináris alakra kell alakítanunk. A módszer:

A tizedes részt 2-vel szorozzuk, és minden lépésben megjegyezzük a kapott egész részt.

A kapott törtrészt ismét megszorozzuk 2-vel, amíg el nem érjük a kívánt pontosságot vagy 0-t.

Szorzás lépésről lépésre:
0.12109375
×
2
=
0.2421875
 → 0

0.2421875
×
2
=
0.484375
 → 0

0.484375
×
2
=
0.96875
 → 0

0.96875
×
2
=
1.9375
 → 1

0.9375
×
2
=
1.875
 → 1

0.875
×
2
=
1.75
 → 1

0.75
×
2
=
1.5
 → 1

0.5
×
2
=
1.0
 → 1 (itt végeztünk)

📌 Bináris alak:

0.12109375
10
=
0.00011111
2
2. A szám normalizálása
A normalizált alak azt jelenti, hogy úgy alakítjuk át a számot, hogy az első 1 mindig a tizedespont után legyen.

Eredeti bináris szám: 
0.00011111
2

Áthelyezzük a tizedes pontot: 
0.11111
2

Mivel három helyiértékkel balra mozdítottuk, a kitevő értéke:

2
−
3
📌 Normalizált forma:

0.00011111
2
=
2
−
3
⋅
0.11111
2
3. Ellenőrzés és helyes válasz kiválasztása
Az egyik válaszlehetőség pontosan megfelel ennek az alaknak:

✅ Helyes válasz: e. 
2
−
3
⋅
0.11111

📌 Összegzés jegyzethez: 1️⃣ Tizedes számot binárissá alakítjuk szorzásos módszerrel. 2️⃣ Bináris alakot normalizáljuk, hogy az első számjegy mindig 1 legyen. 3️⃣ A megfelelő kitevőt (-3) meghatározzuk az áthelyezés alapján. 4️⃣ A végleges normalizált forma: 
2
−
3
⋅
0.11111
2
.

🚀 Próbáld ki MATLAB-ban, ha ellenőrizni szeretnéd! 😊 Ha további részleteket szeretnél, szólj, és bővítjük a jegyzetet! 📊

miért nyolcszormszoroztuk?
Nagyszerű kérdés! 😊 Azért kellett nyolcszor szorozni 2-vel, mert így tudjuk a tizedes törtet binárissá alakítani, és minden lépésben megkapjuk egy-egy bitet.

Mi történik minden szorzásnál?
Minden lépésben megszorozzuk a tizedes részt 2-vel.

Megjegyezzük az egész részt (0 vagy 1).

A törtrészt folytatjuk újra szorzással, amíg el nem érjük a pontos bináris reprezentációt.

Miért kellett nyolc lépés?
A 0.12109375 decimális szám nyolc bináris számjegyből áll.

Ez azt jelenti, hogy nyolcszor kellett szorozni ahhoz, hogy az egész részekből összeálljon a bináris alak.

📌 Ez egy fontos lépés a tizedes tört binárissá alakításában. 📌 A szorzás addig folytatódik, amíg a törtrész 0 lesz vagy a kívánt pontosságot elérjük.