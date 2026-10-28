function x=simpsons_adaptiveintegration(f,a,b,eps,delta)
%eps is error 
%delta is minumum interval length

x=0;
k=0;
goodintervals=[];
testintervals=[a,b];

%Initial Setup


while isempty(testintervals)~=1
    left = testintervals(1,1);
    right = testintervals (1,2);
    mid = (left + right) / 2;
    sumleft=simpsons(left,mid,f);
    sumright=simpsons(mid,right,f);
    sumfull=simpsons(left,right,f);
    k=k+1;
    h=(right-left);
    epsint=eps*(h/(b-a));
    if abs(sumleft+sumright-sumfull)<15*epsint
        goodintervals = [goodintervals; left, right]; % Store the good interval
        testintervals(1,:) = [];
        x=x+sumleft+sumright;
    elseif h>delta
        testintervals = [testintervals;left,mid;mid,right];
        testintervals(1,:) = [];
    else
        x=x+sumleft+sumright
        testintervals(1,:)=[];
        warning('Specified delta was not met. Interval too small.')
    end
end

goodsize=size(goodintervals,1);
fprintf('This Simpson''s Adaptive method used %d intervals and %d iterations\n\n',goodsize,k)



%Not necessary for function, only for curiosity. 
for i=1:goodsize
    goodintervals(i,3)=abs(goodintervals(i,2)-goodintervals(i,1));
end

goodintervals = sortrows(goodintervals,1);
xvalues=linspace(a,b,200);
yvalues=f(xvalues);
xint=[goodintervals(:,1);goodintervals(end,2)];
yint=f(xint);
figure; hold on;
plot(xvalues,yvalues,'r-',LineWidth=2)
plot(xint,yint,'ro','MarkerSize',8,'MarkerFaceColor','r')
title('Plot for Simpsons Rule')
end