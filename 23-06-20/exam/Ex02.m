% ex02
x=input('enter x:');
n=input('enter n:');
sum=0;
for k=1:n
    temp=(3/x)^k;
    sum=sum+temp;
end 
disp(['sum is :',num2str(sum)])