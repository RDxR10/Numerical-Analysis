clear;clc;close;
n=input("Enter no. of data points");
for i=1:n
    x(i)=input("Enter x:-");
    y(i)=input("Enter y:-");
end
xval=input("Enter the value of x at which y is required");
yval=0;
for i=1:n
    numi=1,deno=1;
    for j=1:n
        if j~=i then
            numi=numi*(xval-x(j));
            deno=deno*(x(i)-x(j));
        end
    end
    yval=yval+numi/deno*y(i);
    disp(yval);
end
mprintf("the y value at %f is %f",xval,yval);
