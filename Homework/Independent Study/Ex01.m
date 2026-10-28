a=-1;
b=1;
m=(a+b)/2;
n=20;
result=zeros(n,5);
k=20;

for i=1:n
    small=10^-i;
    f=@(x) sqrt(x^2+small);
    j = @(x) 0.5 * ( x .* sqrt(x.^2 + small) + small .* log( x + sqrt(x.^2 + small) ) );
    actual=j(b)-j(a);
    regsimp=simpsons(a,b,f);
    result(i,1)=regsimp; %Simpsons
    result(i,2)=compositeintegration(f,a,b,k); %Composite Integration
    result(i,3)=actual; %Computed by hand
    result(i,4)=abs(actual-result(i,1)); %Error between Actual and Simpson's
    result(i,5)=abs(actual-result(i,2)); %Error between Actual and Comp
 
end

result

