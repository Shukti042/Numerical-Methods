function s= CurveFit(x,y)
m=size(x);
n=m(2);
sumx=0;
sumy=0;
sumxy=0;
sumxs=0;
i=1;
while(i<=n)
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumxy=sumxy+(x(i)*y(i));
    sumxs=sumxs+(x(i)*x(i));
    i=i+1;
    
end
a1=(n*sumxy-(sumx*sumy))/(n*sumxs-(sumx*sumx));
a0=(sumy/n)-(a1*(sumx/n));
i=2;
xp=[min(x):2:max(x)];
yp=eqn(a1,a0,xp(1));
s=size(xp);
sz=s(2);
while(i<=sz)
    yp=[yp,eqn(a1,a0,xp(i))];
    i=i+1;
end
        plot(xp,yp);
        hold on;
plot(x,y,'bo');
plot(xp,yp);
disp("y="+a1+"x"+a0);
end