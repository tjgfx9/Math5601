function root=secmeth(f,x0,x1,etol,ef,M);

k=2;
xkm1=f(x0)
xk = x1 - (f(x1)*(x1-x0)) / (f(x1)-xkm1)

while abs(xk-x1)>=etol && k<=M-1
    if f(xk)<ef
        fprintf('The f tolerance has been achieved.\n\n')
        break
    else
        x0=x1;
        x1=xk;
        s=f(x1);
        xk = x1 - (s*(x1-x0)) / (s-f(x0))
        k=k+1;
    end
end



if k == M
    fprintf('Maximum iterations reached without convergence.\n');
elseif k<M
    fprintf('The root was found to be %e after %d iterations.\n', xk, k);
end

root=xk;
end
