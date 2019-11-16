clear;
n=input("Enter the number of data points: ");
for i=1:n
    x(i)=input("Enter x:");
    y(i)=input("Enter y:");
end
h=x(2)-x(1);//interval
//Calculation of first order differences
for i=1:n-1
    dy(i,1)=y(i+1)-y(i);
    printf("First difference: %d\n",dy(i,1));
end
//Calculation of second order differences
for j=2:n-1
    for i=1:n-j
        dy(i,j)=dy(i+1,j-1)-dy(i,j-1);
        printf("%d Difference: %d\n",j,dy(i,j));
    end
end
//p value
p=(%s-x(1))/h;
disp(p);
//apply to formula
yval=y(1);
pnxt=p;
disp("Main Result");
for i=1:n-1
    nxterm=pnxt*dy(1,i)/factorial(i);
    yval=yval+nxterm;
    pnxt=pnxt*(p-i);
end
disp(yval);
