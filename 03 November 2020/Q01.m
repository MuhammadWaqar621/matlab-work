clc
clear
filename='production.xlsx';
data=xlsread(filename);
[r,c]=size(data);
avg_=[];
std_=[];
for i=1:r
    avg_=[avg_ mean(data(i,:))];
    std_=[std_ std(data(i,:))];
end
disp('part a')
avg_
std_
disp('part_b')
line_1=length(find(avg_(1)>data(1,:)));
disp(['the production line 1 has ', num2str(line_1),' products greater than average weight'])
line_2=length(find(avg_(2)>data(2,:)));
disp(['the production line 1 has ', num2str(line_2),' products greater than average weight'])
line_3=length(find(avg_(3)>data(3,:)));
disp(['the production line 1 has ', num2str(line_3),' products greater than average weight'])
line_4=length(find(avg_(4)>data(4,:)));
disp(['the production line 1 has ', num2str(line_4),' products greater than average weight'])
line_5=length(find(avg_(5)>data(5,:)));
disp(['the production line 1 has ', num2str(line_5),' products greater than average weight'])

disp('part c')
prod1=sum(data(1,:)>1005 | data(1,:)<95);
disp(['the production line 1 has ', num2str(prod1),' products outside weight'])
prod2=sum(data(2,:)>1005 | data(2,:)<95);
disp(['the production line 1 has ', num2str(prod2),' products outside weight'])
prod3=sum(data(3,:)>1005 | data(3,:)<95);
disp(['the production line 1 has ', num2str(prod3),' products outside weight'])
prod4=sum(data(4,:)>1005 | data(4,:)<95);
disp(['the production line 1 has ', num2str(prod4),' products outside weight'])
prod5=sum(data(5,:)>1005 | data(5,:)<95);
disp(['the production line 1 has ', num2str(prod5),' products outside weight'])