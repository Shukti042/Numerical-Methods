function root=Secant_Method_1605042(func,xl,xu,es,mi)
i=0;
ea=1.1*es;
xr=(xl+xu)/2;
while(ea>es & i<mi)
    xr=(xl+xu)/2;
    if(func(xl)*func(xr)<0)
        xu=xr;
    end
    if(func(xl)*func(xr)>0)
            xl=xr;
    end
    if(func(xl)*func(xr)==0)
        break;
    end
    i=i+1;
    ea=abs((xu-xl)/(xu+xl))*100;
end
root=xr
i
end