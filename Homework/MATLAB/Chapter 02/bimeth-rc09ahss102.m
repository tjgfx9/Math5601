a=0;
b=0;
k=0;
etol=0;
ef=0;
xk=0;
M=0;

etol=0.01;
ef=0.000001;
a=-1;
b=0;
M=100;


%Check IVT


if f(a)*f(b)<=0

ak=a;
bk=b;
xk = (a + b) / 2; % Initial midpoint
tic
while (bk-ak)/2 >= etol && k<=M
    
    if f(xk)==0
        break; % Root found

    elseif k==M
        error('Maximum iterations reached without finding a root.');

    elseif abs(f(xk))<=ef
        fprintf("Close enough\n\n")
        break; % Close enough

    elseif f(ak)*f(xk)<0
        bk=xk;

    elseif f(xk)*f(bk)<0
        ak=xk;

    end
    k=k+1;
    xk=(ak+bk)/2;


else
    error('The function must have opposite signs at the endpoints a and b.');
end


end
fprintf('Approximate root: %.6f\n', xk);
fprintf('Number of iterations: %d\n', k);


end
toc
