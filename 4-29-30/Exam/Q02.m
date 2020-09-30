function [x1,x2]=Q02(a,b)
D=1;
for i=1:length(a)
   D=D*a(i);
end 
matrix=[sum(a.^3)*sum(b.^2) , sum(a.^2)*sum(b.^2);
    sum(a.^2)*sum(b.^2), sum(a./(b.^2))];
B=[D/sum(b.^2);sum(1./a)];
C=inv(matrix)*B;
x1=C(1);
x2=C(2);
end 