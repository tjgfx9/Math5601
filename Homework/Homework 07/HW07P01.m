fun=@root2d;

%[a0,a1,a2,x0,x1,x2]

%First try, all zeros, didn't work
%xstart=[0, 0, 0, 0, 0, 0];
%x=fsolve(fun,xstart)


%Second try, bump by 0.1.Try x0 = -0.1 becuase it is centered around 0
xstart=[0.1, 0.1, 0.1, -0.1, 0, 0.1];
x=fsolve(fun,xstart)

function F = root2d(x)
F(1) = x(1)+x(2)+x(3)-2;
F(2) = x(1)*x(4)+x(2)*x(5)+x(3)*x(6);
F(3) = x(1)*x(4)^2+x(2)*x(5)^2+x(3)*x(6)^2-2/3;
F(4) = x(1)*x(4)^3+x(2)*x(5)^3+x(3)*x(6)^3;
F(5) = x(1)*x(4)^4+x(2)*x(5)^4+x(3)*x(6)^4-2/5;
F(6) = x(1)*x(4)^5+x(2)*x(5)^5+x(3)*x(6)^5;
end

