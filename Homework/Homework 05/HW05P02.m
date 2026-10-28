fprintf('\n\nHomework 05 Problem 2\n\n\n')




f = @(t,y) y^(1/3);


x=forwardeuler(0,2,20,f,0);
x
d=forwardeuler(0,2,20,f,0.01); %even starting a little off 0 fixes this issue.
d