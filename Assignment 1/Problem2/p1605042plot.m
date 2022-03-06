x=[0:0.001:.999];
fx=fx1605042(0);
i=0.001;
while(i<=.999)
    fx=[fx,fx1605042(i)];
    i=i+0.001;
end
fx=[fx,fx1605042(.999)];
x1=x(1:1000);
y1=fx(1:1000);
root= interp1(y1,x1,0)
%since the value of k is grater than 0 and less than 1,the value of x is
%also grater than 0 and less then 1 according to the equation
%Here we find only one value of x in this range,so the graph is drawn in a
%short range for a clear view since the value of x is very small
%the function is squared for a continuous function,for the other two
%roots,k<0 which is not fare
x2=x(1:40);
y2=fx(1:40);
plot(x2,y2);
title('Plot of x versus fx');
xlabel('Values of x');
ylabel('Values of fx');
grid;