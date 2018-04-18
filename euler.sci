clc
clear
function ydot=euler(x,y)
ydot=2-2*y-%e^(-4*x)
endfunction
x0=input("enter intial value x0:")
y0=input("enter intial value y0:")
h=input("enter step size h:")
xn=input("enter final value xn:")
x=x0:h:xn;
y=ode(y0,x0,x,euler)
disp(x,"x value:")
disp(y,"y value:")
plot(x,y)
