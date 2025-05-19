% 7-el osztható számok keresése

% Változók inicializálása
i = 1;
n = 100;
count_7 = 0;
re = []; % Üres vektor inicializálása

while i <= n
    if mod(i, 7) == 0
        re = [re i]; % Szám hozzáadása a vektorhoz
        count_7 = count_7 + 1; % Számláló növelése
    end
    i = i + 1;
end

% Eredmények kiíratása
disp('A 7-el osztható számok száma:');
disp(count_7);
disp('A 7-el osztható számok listája:');
disp(re);


M = matrixgenerator(7)
