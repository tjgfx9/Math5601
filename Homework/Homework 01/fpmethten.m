function fpmethten(f,x0);

%Runs the fixed point methed 10 times only and stops.
%Tolerance was not asked for.


k = 0;
x1=f(x0);
fprintf('The first guess for x0 = %d gives x1=g(x0), x1 = %e\n',x0,x1);
M=10;
xk=x1;

while k<M
    % Compute the new guess using the function f
    
    x0 = xk; % Update the previous guess
    xk = f(x0);
    k = k + 1; % Increment the iteration counter
    fprintf('For iteration %d xk is %e and f(xk) is %e.\n\n',k,x0,xk)
end


end

