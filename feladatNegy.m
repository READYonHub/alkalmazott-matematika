%2. diasor 2.feladat

A = matrixgenerator(100);
b= -98:1;
b=b';

%Ax= b
x = A\b;

norma_b = norm(b,"inf");
norma_X = norm(x,"inf");

b(100) = 1.00001;

y= A\b;

norma_b = norm();

%diasor 4. feladat

x = [-1 0 5 1 -3];
n1 = norma1(x);
n1 = norma2(x);
n1 = norma_INF(x);