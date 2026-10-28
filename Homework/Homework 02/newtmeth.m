function root=newtmeth(f,x0,etol,ef,edf,M);


syms x
df_sym = diff(f(x), x);      % symbolic derivative
df = matlabFunction(df_sym);

% Initialize the first iteration
xk = x0 - (f(x0) / df(x0))
k=1;

while abs(xk-x0)>etol && k<M
    if abs(f(xk))<ef
        fprintf('The f tolerance has been achieved.\n\n')
        break
    elseif abs(df(xk))<edf
        fprintf('The df tolerance has been achieved.\n\n')
        break
    end
    k=k+1;
    x0=xk
    xk=x0-(f(x0)/df(x0))
end


if k == M
    fprintf('Maximum iterations reached without convergence.\n');
elseif k<M
    fprintf('The root was found to be %e after %d iterations.\n', xk, k);
end

root=xk;
end