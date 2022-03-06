function val = Cos1605042(x,n)
sign=-1;
val=1;
i=1;
while(i<=n)
    val=val+((sign*pow1605042(x,i*2))/factorial1605042(i*2));
    sign=sign*(-1);
    i=i+1;
end
end

