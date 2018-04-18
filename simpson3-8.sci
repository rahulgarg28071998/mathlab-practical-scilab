clc
clear
deff('y=f(x)','y=x/(x*x+5)')
a=input("enter lower limit")
b=input("enter upper limit")
n=input("enter number of sum intervals")
h=(b-a)/n
x(1)=a
sum=f(a)
for i=2:n
    x(i)=x(i-1)+h
end
for j=2:3:n
    sum=sum+3*f(x(j)); 
end
for k=3:3:n
    sum=sum+3*f(x(k));
end
for l=4:3:n
    sum=sum+2*f(x(l));
end
sum=sum+f(b);
val=sum*3*h/8;
disp(val,"value of integral by simpsons 3/8 th rule is :")
