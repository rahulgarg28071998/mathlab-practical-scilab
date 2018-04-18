clc
clear
m=3
n=3
disp("Enter elements of first matrix:")
for i=1:3
   for j=1:3
        A(i,j)=input("\")
    end
end
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

disp(P)


for i=1:3
    for j=1:3
      if(P(i,j)==0)
            
      elseif(i==j)
            P(i,:)=P(i,:)/P(i,i)
       else
           P(j,:)=(P(j,:)/P(j,i))-P(i,:)
     end
     disp(P)
    end 
end

disp(P)        
