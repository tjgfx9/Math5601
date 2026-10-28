format long
f=@(x) 1./(1+100*x);


fprintf('\n\n\n\n\nf(x) = 1/(1+100x)\n\n')
xaproxrapid=zeros(1,4);
a=10^-6;
b=1;
j=[5,10,20,1131];
eps=10^-10;
delta=10^-10;
JFrapid=(1/100)*(log(1+100*b)-log(1+100*a));

%Matrix Setup
xaprox_simple_rapid=zeros(2,1);
error_simple_rapid=zeros(2,1);

xaprox_comp_rapid=zeros(4,1);
error_comp_rapid=zeros(4,1);

xaprox_adapt_rapid=zeros(2,1);
error_adapt_rapid=zeros(2,1); 


%Matrix Execution
xaprox_simple_rapid(1)=simpsons(a,b,f);
xaprox_simple_rapid(2)=problemD(a,b,f);
error_simple_rapid(1) = abs(JFrapid - xaprox_simple_rapid(1));
error_simple_rapid(2) = abs(JFrapid - xaprox_simple_rapid(2));

for i=1:4
    xaprox_comp_rapid(i)=compositeintegration(f,a,b,j(i));
    error_comp_rapid(i) = abs(JFrapid - xaprox_comp_rapid(i));
end

xaprox_adapt_rapid(1)=simpsons_adaptiveintegration(f,a,b,eps,delta);
xaprox_adapt_rapid(2)=simpsons38_adaptiveintegration(f,a,b,eps,delta);
error_adapt_rapid(1)=abs(JFrapid-xaprox_adapt_rapid(1));
error_adapt_rapid(2)=abs(JFrapid-xaprox_adapt_rapid(2));


