clc;clear;close;
deff('y=f(x)', 'y=log(sin(x))')
a = input("Enter lower limit: ")
b = input("Enter upper limit: ")
n = input("Enter number of sub intervals: ")
h = (b-a)/n
add1=0
add2=0
for i=0:n
x=a+i*h
y=f(x)
disp([x,y])
if (i==0)|(i==n)
        add1=add1+y
    else
        add2=add2+y
    end
end
I=(h/2)*(add1+(2*add2))
disp(I,"Integration by Trapezoidal Rule is:")
I=integrate('log(sin(x))','x',0.1,0.85)
disp(I,"Direct integration value:")
