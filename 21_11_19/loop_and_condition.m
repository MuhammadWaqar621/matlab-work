clc
clear all
close all
fprintf('\n****Choose Loop for Matrix****\n1. For Loop \n2. While Loop\n')

while (1)
    select_loop=input('Enter Value:');
    if(select_loop<1 || select_loop>2)
        disp('You Enter the value Out of Range ')
    else
        break
    end 
end 
matrix=[12 14 1 3 ; -7 9 55 63; 9 -8 100 114];
vector=[1:2:20];
[r,c]=size(matrix);
fprintf('********************\n The Matrix\n********************\n')
if (select_loop==1)
    fprintf('********************\n you select the for loop\n********************\n')
    for i=1:r*c
        disp(['Matrix have Element at Index [',num2str(i),'] =',num2str(matrix(i))])
    end 
elseif (select_loop==2)
    fprintf('********************\n you select while loop\n********************\n')
    i=1;
    while(i<=r*c)
           disp(['Matrix have Element at Index [',num2str(i),'] =',num2str(matrix(i))])
           i=i+1;
    end 
end 

fprintf('****Choose Loop for Vector****\n1. For Loop \n2. While Loop\n')

while (1)
    select_loop=input('Enter Value:');
    if(select_loop<1 || select_loop>2)
        disp('You Enter the value Out of Range ')
    else
        break
    end 
end 


fprintf('********************\n The Vector\n********************\n')

if (select_loop==1)
    fprintf('********************\n you select the for loop\n********************\n')
    for i=1:length(vector)
        disp(['Vector has Element at Index [',num2str(i),'] =',num2str(vector(i))])
    end 
elseif (select_loop==2)
    fprintf('********************\n you select while loop\n********************\n')
    i=1;
    while(i<=length(vector))
           disp(['Vector has Element at Index [',num2str(i),'] =',num2str(vector(i))])
           i=i+1;
    end 
end 