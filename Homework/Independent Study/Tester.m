format long
xaproxlocalunsmooth=zeros(8,10);
errorlocalunsmooth=zeros(8,10);
JFunsmooth=zeros(1,8);
a=-1;
b=1;
eps=10^-10;
delta=10^-10;
sum=simpsons_adaptiveintegration(f,a,b,eps,delta);