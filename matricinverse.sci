clc
clear
m=3
n=3
disp("Enter elements of first matrix:")
for i=1:3
   for j=1:3
        A(i,j)=input(" ")
    end
end
disp(A)
for i=1:3
    for j=1:3
        P(i,j)=A(i,j);
     end
end
for i=1:3
    for j=4:6
        if(i==(j-3)) then
            P(i,j)=1;
        else P(i,j)=0;
        end
     end   
end

disp(P);


P(1,:)=P(1,:)/P(1,1);
P(2,:)=P(2,:)-P(2,1)*P(1,:);
P(3,:)=P(3,:)-P(3,1)*P(1,:);
P(2,:)=P(2,:)/P(2,2);
P(1,:)=P(1,:)-P(1,2)*P(2,:);
P(3,:)=P(3,:)-P(3,2)*P(2,:);
P(3,:)=P(3,:)/P(3,3);
P(1,:)=P(1,:)-P(1,3)*P(3,:);
P(2,:)=P(2,:)-P(2,3)*P(3,:);

disp(P);

 for i=1:3
    for j=4:6
        A(i,j-3)=(P(i,j));
     end
end   
disp(A)    
