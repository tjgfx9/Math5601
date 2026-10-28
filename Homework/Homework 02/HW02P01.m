%Problem #1: Define a special function f(x) for Newton's method such that Newton's method can lead to the following
%iterative scheme
%xk+1 = xk(2 − Rxk)
%to calculate the reciprocal of a number R. In order to fully justify your f(x), you need to use the scheme of Newton's
%method to derive the above iterative scheme in details.


R=input('Enter the number you would like to find the reciprocal of: ' );

f = @(x) 1/x - R;

if R==0
    fprintf('\n\nThe number entered is 0. 0 does not have a reciprocal.\n\n')
else
    newtmeth(f,0.1,10^-10,10^-10,10^-10,100);
end

