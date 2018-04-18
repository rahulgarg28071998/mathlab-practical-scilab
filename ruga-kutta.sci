clc
clear
function ydot=f(x,y)
    ydot=x+y^2
endfunction
x1=0;
y1=1;
h=input("enter step size h:")
x(1)=x1;
y(1)=y1;
for i=1:2
    k1=h*f(x(i),y(i));
    k2=h*f(x(i)+0.5*h,y(i)+0.5*k1);
    k3=h*f((x(i)+0.5*h),(y(i)+0.5*k2));
    k4=h*f((x(i)+h),(y(i)+k3));
    k=(1/6)*(k1+2*k2+2*k3+k4);
    y(i+1)=x(i)+k;
    printf('\n the value of y at x=%f is %f',i*h,y(i+1))
    x(i+1)=x(1)+i*h;
end
