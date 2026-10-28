%Problem #1: Consider the bisection method applied to f(x) = arctan(x) with initial interval [a, b] = [−4.9, 5.1].
%(a) Program bisection method in Matlab.
%(b) Use the code to solve f(x) = 0 with 
%  ε = 10−2
%, ε = 10−4
%, ε = 10−8
%. For each ε, (1) output the numbers of iterations and the final numerical solutions; 
% (2) compute the k at which the algorithm should stop with pencil and
    %paper and compare it with the numerical results.

f=@(x) atan(x);

%bimeth(f,etol,ef,a,b,M)
% f=function
% etol is for testing a+b/2
% ef is for testing f(xk)<ef
% a=left point
% b=right point
% M=Max Iterations


% no ef is givien, so I made it sufficiently small as to force it to run
% until a silution is found. 

fprintf('The function is f(x)=arctan(x)\n\n\n\n')

fprintf('\n\nThe epsilon is 10^-2\n\n')
x2=bimeth(f,10^-2,0.00000001,-4.9,5.1,100);

fprintf('\n\nThe epsilon is 10^-4\n\n')
x4=bimeth(f,10^-4,0.0000000000001,-4.9,5.1,100);

fprintf('\n\nThe epsilon is 10^-8\n\n')
x8=bimeth(f,10^-8,0.0000000000001,-4.9,5.1,100);

