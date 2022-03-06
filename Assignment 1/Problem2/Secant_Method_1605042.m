function root=Secant_Method_1605042(func,xr0,xr1,es,mi)
i=0;
ea=1.1*es;
while(ea>es & i<mi)
    xr2=xr1-(((xr0-xr1)/(func(xr0)-func(xr1)))*func(xr1));
    xr0=xr1;
    xr1=xr2;
    ea=abs(((xr1-xr0)/xr1)*100);
    i=i+1;
end;
root=xr1
No_of_iteration=i
last_approximate_error=ea
end