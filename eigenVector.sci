clc;
clear;
disp("enter the 2*2 matric elements");
A=zeros(2,2);
for i=1:2
    for j=1:2 
        A(i,j)=input('');
    end
end
disp(A);
t=A(1,1)+A(2,2);
d=(A(1,1)*A(2,2)-A(1,2)*A(2,1));
e1=(t+sqrt((t*t)-(4*d)))/2;
e2=(t-sqrt((t*t)-(4*d)))/2;
disp("eigen values are : ");
disp(e1);
disp(e2)
if(A(1,2)~=0) then
   x1(1,1)=A(1,2);
   x1(1,2)=e1-A(1,1);
   x2(1,1)=A(1,2);
   x2(1,2)=e2-A(1,1);
   disp("the eigen vectors are");disp("x1:");
  disp(x1)
  disp(x2)
elseif(A(2,1)~=0) then
   x1(1,2)=A(1,2);
   x1(1,1)=e1-A(1,1);
   x2(1,2)=A(1,2);
   x2(1,1)=e2-A(1,1);
   disp("the eigen vectors are:");disp("x1:")
  disp(x1);disp("x2:");
  disp(x2)  
else(A(2,1)==0|A(1,2)==0)
   x1(1,2)=1;
   x1(1,1)=0;
   x2(1,2)=0;
   x2(1,1)=1; 
  disp("the eigen vectors are:");disp("x1:")
  disp(x1);disp("x2:");
  disp(x2)  
end
