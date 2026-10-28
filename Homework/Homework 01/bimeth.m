function root=bimeth(f,etol,ef,ak,bk,M);

k=0;
if f(ak)*f(bk)<=0

xk=(ak+bk)/2; % Initial midpoint


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
fprintf('The root was found to be %e after %d iterations. The error is within %e\n',xk,k,etol);

else
    error('The function must have opposite signs at the endpoints a and b.');
end

root = xk; % Assign the found root to the output variable
end