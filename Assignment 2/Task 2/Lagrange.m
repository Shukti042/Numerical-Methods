function s=Lagrange(x,fx,a)
xt=[1:.11:36];
sz=size(xt);
n=sz(2);
yt=funcLag(x,fx,xt(1));
i=2;
while(i<=n)
    yt(i)=funcLag(x,fx,xt(i));
    i=i+1;
end
figure('Name','Lagrange');
plot(xt,yt);
ylim([0 1000]);
hold on;
s=eqnLag(x,fx);
i=1;
ax=0;
sz=size(a);
n=sz(2);
while(i<=n)
    ax(i)=funcLag(x,fx,a(i));
    i=i+1;
end
plot(a,ax,'ro');
ylim([0 1000]);
plot(x,fx,'go');
ylim([0 1000]);
fprintf('\nThe Missing Inputs:');
a
fprintf('\nThe Missing Oututs:');
ax
end