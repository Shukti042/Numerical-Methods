function s=Newton(x,fx,a)
sz=size(x);
n=sz(2);
mat=transpose(fx);
i=2;
while(i<=n)
    j=i;
    while(j<=n)
        mat(j,i)=(mat(j,i-1)-mat(j-1,i-1))/((x(j)-x(j-i+1)));
        j=j+1;
    end
    i=i+1;
end
b=mat(1,1);
i=2;
while(i<=n)
    b=[b,mat(i,i)];
    i=i+1;
end
xt=[1:0.1:36];
yt=func(b,xt(1),x);
i=2;
sz=size(xt);
n=sz(2);
while(i<=n)
    yt=[yt,func(b,xt(i),x)];
    i=i+1;
end
figure('Name','Newton');
plot(xt,yt);
ylim([0 1000]);
hold on;
s=eqns(b,x);
i=1;
ax=0;
sz=size(a);
n=sz(2);
while(i<=n)
    ax(i)=func(b,a(i),x);
    i=i+1;
end
plot(a,ax,'ro');
ylim([0 1000]);
plot(x,fx,'go');
ylim([0 1000]);
fprintf('\nThe Missing Inputs:');
a
fprintf('\nThe Missing Outputs:');
ax
end