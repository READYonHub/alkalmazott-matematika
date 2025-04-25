%2. diasor 2.feladat

A = matrixgenerator(100);
b= -98:1;
b=b';

%Ax= b
x = A\b;

norma_b = norm(b,"inf");
norma_X = norm(x,"inf");
b_tiszta= b;

b(100) = 1.00001;

y= A\b;

norma_b = norm(b);

%diasor 4. feladat

x = [-1 0 5 1 -3];
n1 = norma1(x);
n1 = norma2(x);
n1 = norma_INF(x);

%kondicioszam

condA = norm(A,"inf") * norm(inv(A), "inf")
b_relativ_hiba = norm(b-b_tiszta,"inf")/norm(b_tiszta, "inf")
x_relative_hibaja = norm(y-x,"Inf")/norm(x,"inf")