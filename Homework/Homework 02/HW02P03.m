%Problem #3: Program the secant method xk+1 = xk −
%f(xk)(xk−xk−1)
%f(xk)−f(xk−1)
%in Matlab. Consider f(x) = arctan(x) which
%has a unique zero z = 0. Choose all the tolerances to be 10−10. Starting with
%(x0, x1) = (0.5, 1),(1, 1.3),(1.4, 1.5),(10, 11),
%iterate until one of the tolerance is satisfied or 20 iterations are completed. Output the numerical results at each
%iteration step.


start = [0.5, 1; 1, 1.3; 1.4, 1.5;10, 11];

for i=1:size(start,1)
    x0=start(i,1);
    x1=start(i,2);
    fprintf('\n\n\n\n\n\n\n\n\nThe Secant Method for x0 = %e, x1 = %e: \n\n',x0,x1)
    secmeth(f,x0,x1,10^-10,10^-10,20);
end