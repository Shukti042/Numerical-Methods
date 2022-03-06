function xr=False_position_1605042(func,xl,xu,es,mi)
i=0;
ea=1.1*es;
xr0=0;
while(ea>es & i<mi)
xr=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
if(i~=1 & ea~=0)
    ea=abs((xr-xr0)/xr)*100;
end
t=func(xr)*func(xl);
if(t==0)
    ea=0;
else if(t<0)
    xu=xr;
    xr0=xr;
else 
     xl=xr;
     xr0=xr;
end
end
i=i+1;
end
root=xr
No_of_iteration=i
last_approximate_error=ea
end
