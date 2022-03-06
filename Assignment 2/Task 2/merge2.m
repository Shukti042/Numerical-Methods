File = 'shampoo.csv';
Data=csvread(File,1,0);
x = Data(:,1);
y = Data(:,2);
x=transpose(x);
y=transpose(y);
i=1;
j=1;
k=1;
outs=1;
x1=0;
y1=0;
sz=size(x);
n=sz(2);
while(i<=n)
    if(y(i)==0)
        outs(j)=x(i);
        j=j+1;
    end
    if(y(i)~=0)
        x1(k)=x(i);
        y1(k)=y(i);
        k=k+1;
    end
    i=i+1;
end
figure('Name','Given Points');
plot(x1,y1,'bo');
hold on;
xlabel('time');
ylabel('sale');
fprintf('Newton :\n');
Newton(x1,y1,outs); 
fprintf('\nLagrange :\n');
Lagrange(x1,y1,outs);
fprintf('Linear Spline :\n');
spline(x1,y1,outs);
fprintf('Linear Spline :\n');
QuadreticSpline(x1,y1,outs);