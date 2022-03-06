function s=spline(x,y,a)
i=1;
j=1;
sz=size(x);
n=sz(2);
sz=size(a);
n2=sz(2);
while(i<n)
    xt=[x(i),x(i+1)];
    yt=[y(i),y(i+1)];
    i2=1;
    while(i2<=n2)
    if(a(i2)>=x(i) & a(i2)<=x(i+1))
        fa(i2)=funcLag(xt,yt,a(i2));
    end
    i2=i2+1;
    end
    i=i+1;
end
figure('Name','Linear Spline');
plot(x,y,'b');
ylim([0 1000]);
hold on;
plot(a,fa,'ro');
plot(x,y,'go');
fprintf('\nThe Missing Inputs:');
a
fprintf('\nThe Missing Outputs:');
fa
end