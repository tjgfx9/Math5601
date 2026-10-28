function root=fpmeth(f,x0,etol,ef,M);



% Initialize iteration counter and error
k = 1;
xk = f(x0);

while k<=M-1 && abs(xk-x0)>=etol
    % Compute the new guess using the function g
    % Check for convergence
    if abs(f(xk) - xk) < ef
        break;
    end
    x0 = xk; % Update the previous guess
    xk = f(x0);
    k = k + 1; % Increment the iteration counter
end

if k == M
    fprintf('Maximum iterations reached without convergence.\n');
end

if k<M
    fprintf('The root was found to be %f after %d iterations.\n', xk, k);
end

root=xk;

end
