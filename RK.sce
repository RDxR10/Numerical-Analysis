clc;clear;close;
deff('g=f(x,y)','g=x+tan(y)')
x0 = input("Enter the initial value of x0: ");
y0 = input("Enter the initial value of y0: ");
h = input("Enter the initial value of h: ");
xn = input("Enter the initial value of xn: ");
n = (xn-x0)/h;
for i=1:n
    k1= h*f(x0,y0)
    k2= h*f(x0+n/2,y0 + k1/2)
    k3= h*f(x0+n/2,y0 + k2/2)
    k4= h*f(x0+n,y0+k3)
    y1=y0+((1/6)*(k1+(2*k2)+(2*k3)+k4))
    x0=x0+h
    disp([x0,y1]);
    y0=y1
end
