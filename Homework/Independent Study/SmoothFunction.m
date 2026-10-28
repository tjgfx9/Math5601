format long
f = @(x) sin(x);

fprintf('\n\n\n\n\nf(x) = sin(x)\n\n')
a=0;
b=1;
eps=10^-10;
delta=10^-10;
j=[5,10,20,159];
JFsmooth=-cos(b)+cos(a);

%Matrix Setup
xaprox_simple_smooth=zeros(2,1);
error_simple_smooth=zeros(2,1);

xaprox_comp_smooth=zeros(4,1);
error_comp_smooth=zeros(4,1);

xaprox_adapt_smooth=zeros(2,1);
error_adapt_smooth=zeros(2,1);

%Matrix Executiom
xaprox_simple_smooth(1)=simpsons(a,b,f);
xaprox_simple_smooth(2)=problemD(a,b,f);
error_simple_smooth(1) = abs(JFsmooth - xaprox_simple_smooth(1));
error_simple_smooth(2) = abs(JFsmooth - xaprox_simple_smooth(2));

for i=1:4
    xaprox_comp_smooth(i)=compositeintegration(f,a,b,j(i));
    error_comp_smooth(i) = abs(JFsmooth - xaprox_comp_smooth(i));
end

xaprox_adapt_smooth(1)=simpsons_adaptiveintegration(f,a,b,eps,delta);
xaprox_adapt_smooth(2)=simpsons38_adaptiveintegration(f,a,b,eps,delta);
error_adapt_smooth(1)=abs(JFsmooth-xaprox_adapt_smooth(1));
error_adapt_smooth(2)=abs(JFsmooth-xaprox_adapt_smooth(2));

