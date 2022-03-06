a=[-2*pi:.2:2*pi];
a=[a,2*pi];
x=Cos1605042(-2*pi,1);
y=Cos1605042(-2*pi,3);
z=Cos1605042(-2*pi,5);
w=Cos1605042(-2*pi,20);
t=-2*pi+(.2);
while(t<=2*pi)
    x=[x,Cos1605042(t,1)];
    y=[y,Cos1605042(t,3)];
    z=[z,Cos1605042(t,5)];
    w=[w,Cos1605042(t,20)];
    t=t+0.2;
end
x=[x,Cos1605042(2*pi,1)];
y=[y,Cos1605042(2*pi,3)];
z=[z,Cos1605042(2*pi,5)];
w=[w,Cos1605042(2*pi,20)];
plot(a,cos(a),'b.');
hold on;
plot(a,x,'g');
hold on;
plot(a,y,'r');
hold on;
plot(a,z,'y');
hold on;
plot(a,w,'m');%this line exactly matches the accurate one,so the original graph is dotted to show it
title('Plot of x versus cosx');
xlabel('Values of x');
ylabel('Values of cosx');
grid; 
