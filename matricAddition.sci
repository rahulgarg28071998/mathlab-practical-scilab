clc
m=input("input the number of rows")
n=input("input the number of column")
disp("Enter elements of first matrix:")
for i=1:m
   for j=1:n
        A(i,j)=input(" ")
    end
end
disp(A)
disp("Enter elements of second matrix:")
for i=1:m
    for j=1:n
        B(i,j)=input(" ")
    end
    
end
disp(B)
for i=1:m
    for j=1:n
        C(i,j)=A(i,j)+B(i,j)
    end
end
disp(C);;;
