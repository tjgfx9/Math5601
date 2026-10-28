%Tester

f= @(t,y)  exp(2*t)+y^2;
y0=0.1;
a=0;
b=1;
etol=10^-6;
ef=etol;
edf=ef;
M=100;

f= @(t,y) exp(2*t)+y^2;

for p=2:7
    j=2^p;
    fprintf('\n\nUsing j = %d\n', j);
    x=backwardeulernewtmeth(f,a,b,y0,j,etol,ef,edf,M);
    x
end

