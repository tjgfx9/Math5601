%Problem #2: Consider g(x) = x − arctan(x).
%(a) Program the fixed point method xk+1 = g(xk) in Matlab. Starting with x0 = 5, −5, 1, −1, 0.1, perform 10
%iterations and output all the numerical solutions at each step.
%(b) What behavior do you observe for the numerical solutions? Explain it in terms of the theory of the fixed
%point method.

g=@(x) x-atan(x);

fprintf('\n\n\nFixed point method for x-arctan(x).\n')
fpmethten(g,5);
fprintf('\n\n\nFixed point method for x-arctan(x).\n')
fpmethten(g, -5);
fprintf('\n\n\nFixed point method for x-arctan(x).\n')
fpmethten(g, 1);
fprintf('\n\n\nFixed point method for x-arctan(x).\n')
fpmethten(g, -1);
fprintf('\n\n\nFixed point method for x-arctan(x).\n')
fpmethten(g, 0.1);