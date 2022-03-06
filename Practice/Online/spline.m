function s=spline(x,y,a)
i=1;
j=1;
sz=size(x);
n=sz(2);
a;
while(i<n)
    xt=[x(i),x(i+1)];
    yt=[y(i),y(i+1)];
    plot(xt,yt);
    hold on;
    if(a>=x(i) & a<=x(i+1))
        fa=funcLag(xt,yt,a);
    end
    i=i+1;
end
plot(a,fa,'go');
hold on;
end