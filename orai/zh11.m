A = [1 0.99; 0.99 0.98];%matrix
b = [1.99 1.97]';%tiszta b

b_perturbalt = [1.98 1.98]';

x = A\b % tiszta megoldás

y = A\b_perturbalt %zajos megoldas

%zaj -> zajos jobb oldalbol kivonom a tiszta b-t
b_relativ_hibaja = norm(b_perturbalt - b, "inf")/norm(b,"inf")

x_relative_hibaja=norm(y-x,"inf")/norm(x,"inf")

condA=norm(A,"inf") * norm(inv(A), "inf")