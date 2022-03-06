function y=func(b,x,x1)
sz=size(b);
n=sz(2);
i=1;
y=b(1);
while(i<n)
    j=1;
    pr=b(i+1);
    while(j<=i)
        pr=pr*(x-x1(j));
        j=j+1;
    end
    y=y+pr;
    i=i+1;
end
end
