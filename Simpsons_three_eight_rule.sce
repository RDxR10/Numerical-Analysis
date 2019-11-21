clc;clear;close
deff('y=f(x)','y=((sin(x)+cos(x))^(1/2))')
a = input("Enter the lower limit: ");
b = input("Enter the upper limit: ");
n = input("Enter the number of intervals: ");
if(modulo(n,3)==0)
    then
        h=(b-a)/n;
        sum1=0;
        sum2=0;
        sum3=0;
        for i=0:n
            x=a+i*h;
            y=f(x);
            disp([x y]);
            if(i==0|i==n)
                then
                    sum1=sum1+y
            else if(modulo(i,3)==0)
                    then
                        sum2=sum2+y
                    else
                        sum3=sum3+y
                    end
         end
        end
I = [((3*h)/8)*(sum1 + (2*sum2) + (4*sum3))]
disp(I,"Integration by Simpsons 3/8th rule is: ")
else
    disp("Cannot be solved")
end
