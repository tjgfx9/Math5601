%Problem #2: Program the Newton's method 
% k+1 = xk −
%f(xk)/f′(xk)
%in Matlab. Consider f(x) = arctan(x) which has a
%unique zero z = 0. Choose all the tolerances to be 10−10. Starting with
%x0 = 0.5, 1, 1.3, 1.4, 1.35, 1.375, 1.3875, 1.39375, 1.390625, 1.3921875,
%iterate until one of the tolerance is satisfied or 20 iterations are completed. Output the numerical solution at each
%iteration step. What behavior do you observe?


f = @(x) atan(x);

start= [0.5; 1; 1.3; 1.4; 1.35; 1.375; 1.3875; 1.39375; 1.390625; 1.3921875];



for i=1:size(start,1)
    x0=start(i);
    fprintf('\n\n\n\n\n\n\n\n\nThe Newtons Method for x0 = %e: \n\n',x0)
    newtmeth(f,x0,10^-10,10^-10,10^-10,20);
end

