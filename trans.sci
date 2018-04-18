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
for i=1:m
   for j=1:n
        B(i,j)=A(j,i)
    end
end
disp(B);
