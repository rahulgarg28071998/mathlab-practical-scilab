clc
clear
deff('y=f(x)','y=x/(x*x+5)')
a=input("enter lower limit")
b=input("enter upper limit")
n=input("enter number of sum intervals")
h=(b-a)/n
x(1)=a;
sum=f(a);
for i=2:n
    x(i)=x(i-1)+h
end
for j=2:2:n
    sum=sum+4*f(x(j));
end
for k=3:2:n
    sum=sum+2*f(x(k));
end
sum=sum+f(b);
val=sum*h/3;
disp(val,"vlaue of integral by simpsons 1/3rd rule is :");
