k=0;

etol=input("Enter tolerance: ");
ef=input("Enter the f tolerance: ");
ak=input("Enter left value: ");
bk=input("Enter right value: ");
M=input("Enter max iterations: ");

if f(ak)*f(bk)<=0

xk=(ak+bk)/2; % Initial midpoint

tic
while (bk-ak)/2 >= etol && k<=M
    
    
    if abs(f(xk))<=ef
        fprintf("Close enough\n\n\n");
        break;
    elseif k==M
        fprintf('Maximum iterations reached without finding a root.\n');
    elseif f(ak)*f(xk)<0
        bk=xk;
        k=k+1;
    elseif f(xk)*f(bk)<0
        ak=xk;
        k=k+1;
    end
    xk=(ak+bk)/2;
end
fprintf('Approximate root: %.6f\n', xk);
fprintf('Number of iterations: %d\n', k);

else
    error('The function must have opposite signs at the endpoints a and b.');
end
toc