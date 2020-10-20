clc
clear all
close all 
warning off
load correlationdataset.mat
% part a
m=rank(X);
disp('part a: ')
disp(['rank is :',num2str(m)])
plot(X(:,1),X(:,m),'x')
xlabel('first column ')
ylabel('rank column ')
title('Plot with rank')
grid on
% part b 
corr_=corr(X);
% find 1 correlation coefficients from first column 
find_1=find(corr_(:,1)==1);
% find -1 correlation coefficients from first column 
find_2=find(corr_(:,1)==-1);
figure 
plot(X(:,1),X(:,find_1(2)),'r')
xlabel('first column ')
ylabel('Linear dependtant with corr')
title('part b')
grid on
hold on
disp('part b:')
disp(['linear independent column with column 1 are :',num2str(find_1(2)),' and ', num2str(find_2)])
plot(X(:,1),X(:,find_2),'b')
legend ('corr = 1','corr = -1')
% % rank function give the dimension of the vector space, so it is nor
% linear independent 
% part c
[r,c]=size(corr_);
part_c=find(corr_>0.9 & corr_<1);
row=ceil(part_c(1)/r);
col=mod(part_c(1),r);
figure 
plot(X(:,row),X(:,col),'x')
xlabel(['column ',num2str(row)])
ylabel(['column ',num2str(col)])
title('part c')
grid on
legend('corr = 0.9 to 0.99')
disp('part c:')
disp(['correlation coefficients greater than .9 and less than 1.0 bettwen columns :',num2str(row),' and ', num2str(col) ])
% from 0.9 to .99 function not behave like linear
% part d
part_d=find(corr_<0.01 & corr_>-0.01);
figure 
plot(X(:,1),X(:,part_d(1)),'x')
grid on 
xlabel('column 1')
ylabel(['column ',num2str(part_d(1))])
title('part d')
legend('corr ~= 0')
disp('part d:')
disp(['correlation coefficients almost zero bettwen columns :',num2str(1),' and ', num2str(part_d(1)) ])
% data have no relation like linear and totally non linear relation between
% col 1 and col 4. we have another column aslo with corr almost 4 but i get
% it first one 
% part e
part_e=find(corr_>0.4 & corr_<0.7);
row_e=ceil(part_e(1)/r);
figure 
plot(X(:,row_e),X(:,c),'x')
grid on 
xlabel(['column ',num2str(row_e)])
ylabel(['column ',num2str(c)])
title('part e')
legend('corr = 0.4 to 0.7')
disp('part e:')
disp(['correlation coefficients bettwen 0.4 to 0.7 columns :',num2str(row_e),' and ', num2str(c) ])
% correlation coefficients bettwen 0.4 to 0.7 data are like linear with lot
% of range , not a full linear case
% part f
part_f=find(corr_<-0.4 & corr_> -0.7);
row_f=ceil(part_f(1)/r);
col_f=mod(part_f(1),r);
figure 
plot(X(:,row_f),X(:,col_f),'x')
grid on 
xlabel(['column ',num2str(row_f)])
ylabel(['column ',num2str(col_f)])
title('part f')
legend('corr = -0.4 to -0.7')
disp('part f: ')
disp(['correlation coefficients bettwen -0.4 to -0.7 columns :',num2str(row_f),' and ', num2str(col_f) ])
% same result like part e but in opposite direction
% part g
corr_g_part=corr(Y);
% correlation coefficients is in both column and it means both column have
% no relation 
figure
plot(Y(:,1),Y(:,2))
grid on 
xlabel('Y column 1')
ylabel('Y column 2')
title('part g')
disp('part g:')
disp('correlation coefficients is 0 and it means both columns have no relation')
% part h
corr_h_part=corr(Z);
% correlation coefficients is in both column and it means both column have
% no relation 
figure
plot(Z(:,1),Z(:,2))
grid on 
xlabel('z column 1')
ylabel('z column 2')
title('part h')
disp('part h:')
disp('correlation coefficients is 0 and it means both columns have no relation')
% remove last row 
Z_update=Z(1:end-1,:);
corr_Z_Update=corr(Z_update);
% correlation coefficients is 1 and it means both columns have linear relation
figure 
plot(Z_update(:,1),Z_update(:,2))
xlabel('Update Z Col 1')
ylabel('Update Z Col 2')
title ('Part h update Z')
grid on
disp('part h update Z:')
disp('correlation coefficients is 1 and it means both columns have linear relation')