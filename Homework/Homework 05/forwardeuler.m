function x=forwardeuler(a,b,j,f,y0)

h=(b-a)/j; %Step Size

x = zeros(j+1, 2); % Initialize the solution ordered pair points
x(1,1) = a; 
x(1,2) = y0; % Set the initial condition

for i=1:j
    tj=a+h*(i-1);
    yj=y0+h*f(tj,x(i,2));
    x(i+1,1)=tj+h;
    x(i+1,2)=yj;
    y0=yj;
end


figure;
plot(x(:,1),x(:,2), 'LineWidth', 2)
xlabel('t')
ylabel('y(t)')
title('Forward Euler')
grid on
end



 