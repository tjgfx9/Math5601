f = @(x) exp(x)+x;

root = bimeth(f,10^-8,0.00000001,-2,0,100)

