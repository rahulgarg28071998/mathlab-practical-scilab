clc;
clear;
n=input("enter the no. of observations")
disp("enter the value of xi")
for i=1:n
    x(i)=input(" ")
end
disp("enter there respective frequency fi")
sum0=0;
for i=1:n
    f(i)=input(" ")
    sum0=sum0+f(i);
end
r=input("how many moments to be calculated");
sum1=0;
for i=1:n
    sum1=sum1+(f(i)*x(i));
end
A=sum1/sum0;
printf("average=%f\n",A);
for j=1:r
    sum2=0;
    for i=1:n y(i)=f(i)*(x(i)-A)^j;
    sum2=sum2+y(i);    
end
M(j)=(sum2/sum0);
printf("moment about mean M(%d)=%f\n",j,M(j));
end
sd=sqrt(M(2));
printf("standard deviation = %f \n",sd);
