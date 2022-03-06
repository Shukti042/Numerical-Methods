function y = QuadreticSpline(x,y,outs)
sz=size(outs);
nout=sz(2);
mat=[1 0 0;x(1)*x(1) x(1) 1;x(2)*x(2) x(2) 1];
ys=[0 y(1) y(2)];
ap=QuadSolve(mat,ys);
xt=[x(1):0.1:x(2)];
sz=size(xt);
n=sz(2);
i=1;
while(i<=n)
yt(i)=funcQuad(ap,xt(i));
i=i+1;
end
figure('Name','Quadretic');
plot(xt,yt);
hold on;
j=1;
k=1;
while(j<=nout)
    if(outs(j)>=x(1)&&outs(j)<=x(2))
        ay(k)=funcQuad(ap,outs(j));
        k=k+1;
    end
    j=j+1;
end
sz=size(x);
n=sz(2);
i=2;
while(i<n)
    mat=[2*x(i) 1 0;x(i)*x(i) x(i) 1;x(i+1)*x(i+1) x(i+1) 1];
    ys=[(2*ap(1)*x(i))+ap(2) y(i) y(i+1)];
    ap=QuadSolve(mat,ys);
    xt=[x(i):0.1:x(i+1)];
    sz=size(xt);
    n2=sz(2);
    o=1;
    yt=xt;
    while(o<=n2)
    yt(o)=funcQuad(ap,xt(o));
    o=o+1;
    end
    plot(xt,yt,'b');
    j=1;
    while(j<=nout)
        if(outs(j)>=x(i)&&outs(j)<=x(i+1))
            ay(k)=funcQuad(ap,outs(j));
            k=k+1;
        end
        j=j+1;
    end
    i=i+1;
end
plot(outs,ay,'ro');
plot(x,y,'go');
fprintf('\nThe Missing Inputs:');
outs
fprintf('\nThe Missing Outputs:');
ay
end