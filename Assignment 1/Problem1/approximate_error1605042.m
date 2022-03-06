val=cos(1.5);
i=2;
t=abs((Cos1605042(1.5,1)-val)/val);
x=t;
while(i<=50)
    t=abs((Cos1605042(1.5,i)-val)/val);
    x=[x,t];
    i=i+1;
end
a=[1:1:50];
plot(a,x);
grid;
title('Plot of no. of term versus relative approx. error');
xlabel('Values of no. of terms');
ylabel('Values of relative approx. error');