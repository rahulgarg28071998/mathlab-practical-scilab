clc
clear
m=input("input the number of rows")
n=input("input the number of column")
disp("Enter elements of first matrix:")
for i=1:m
   for j=1:n
        A(i,j)=input("")
    end
end
disp(A);
p=input("input the number of rows")
q=input("input the number of column")
disp("Enter elements of second matrix:")
for i=1:p
    for j=1:q
        B(i,j)=input("")
    end
end
disp(B);


if n==p then
    for i=1:m
        for j=1:q  C(i,j)=0
             for k=1:p 
                C(i,j)=C(i,j)+(A(i,k)*B(k,j))
               
             end
        end
     end
disp(C);;;
else 
    disp("matrix multiplication not possible") ;;
end
