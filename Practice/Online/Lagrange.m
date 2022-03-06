function s=Lagrange(x,fx,a)
xt=[-5:0.001:5];
yt=funcLag(x,fx,xt(1));
i=2;
sz=size(xt);
n=sz(2);
while(i<=n)
    yt=[yt,funcLag(x,fx,xt(i))];
    i=i+1;
end
plot(xt,yt,'b');
hold on;
plot(x,fx,'ro');
hold on;
spline(x,fx,a);
fa=funcLag(x,fx,a);
plot(a,fa,'yo');
s=eqnLag(x,fx);
end