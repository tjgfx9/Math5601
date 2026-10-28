etol=0.00000001;
ef=0.000001;
M=100;
x0 = 1;

% Initialize iteration counter and error
k = 1;
xk = g(x0);

while k<=M-1 && abs(xk-x0)>=etol
    % Compute the new guess using the function g
    % Check for convergence
    if abs(g(xk) - xk) < ef
        break;
    end
    x0 = xk; % Update the previous guess
    xk = g(x0);
    k = k + 1; % Increment the iteration counter
end

if k == M
    fprintf('Maximum iterations reached without convergence.\n');
end

if k<M
    fprintf('Converged to %f after %d iterations\n', xk, k);
end