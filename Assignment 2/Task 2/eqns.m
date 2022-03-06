function s=eqns(b,x1)
sz=size(b);
n=sz(2);
i=1;
s="";
s=s+b(1);
while(i<n)
    j=1;
    s=s+"+"+b(i+1);
    while(j<=i)
        s=s+"(x-"+x1(j)+")";
        j=j+1;
    end
    i=i+1;
end
s=s+"=0";
end
