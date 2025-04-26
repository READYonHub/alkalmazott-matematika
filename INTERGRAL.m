f1 = @(x) 3 * x .^ 8 .* cos(exp(x.^2) -5)

I = integral(f1,0,10)

f2 = @(x,y)x.*y.^5 - 3 * log(x.^2 + sin(x.*y))

I2 = integral2(f2,-1,2,5,6)