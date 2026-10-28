format long
xaproxlocalunsmooth=zeros(8,10);
errorlocalunsmooth=zeros(8,10);
JFunsmooth=zeros(1,8);
a=-1;
b=1;
eps=10^-10;
delta=10^-10;
steps=[5,10,20,100];
for i=1:10
    small=10^-i;
    fprintf('\n\n\n\n\nf(x) = sqrt(x^2+%d)\n\n',small)
    f=@(x) sqrt(x.^2+small);
    j = @(x) 0.5 * ( x .* sqrt(x.^2 + small) + small .* log( x + sqrt(x.^2 + small) ) );
    actual=j(b)-j(a);
    JFunsmooth(i)=actual;
    xaproxlocalunsmooth(1,i)=simpsons(a,b,f);
    xaproxlocalunsmooth(2,i)=problemD(a,b,f);
    for j=1:size(steps,2)
        xaproxlocalunsmooth(j+2,i)=compositeintegration(f,a,b,steps(j));
    end
    xaproxlocalunsmooth(7,i)=simpsons_adaptiveintegration(f,a,b,eps,delta);
    xaproxlocalunsmooth(8,i)=simpsons38_adaptiveintegration(f,a,b,eps,delta);


    errorlocalunsmooth(1,i) = abs(JFunsmooth(i) - xaproxlocalunsmooth(1,i));
    errorlocalunsmooth(2,i) = abs(JFunsmooth(i) - xaproxlocalunsmooth(2,i));
    for l=1:size(steps,2)
        errorlocalunsmooth(l+2,i)=abs(JFunsmooth(i)-xaproxlocalunsmooth(l+2,i));
    end
    errorlocalunsmooth(7,i) = abs(JFunsmooth(i) - xaproxlocalunsmooth(7,i));
    errorlocalunsmooth(8,i) = abs(JFunsmooth(i) - xaproxlocalunsmooth(8,i));
end
