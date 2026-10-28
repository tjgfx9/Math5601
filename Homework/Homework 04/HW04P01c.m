%Compute the numerical differentiation for x = 3 and h = 10−n (n = 1, 2, · · · , 20). Use ln′



f = @(x)  log(x);
fprime = @(x) 1/x;

[ak,error]=doublecenter(f,fprime,20,3);


format long g
ak
error
