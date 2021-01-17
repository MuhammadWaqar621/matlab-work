clc
clear 
close 
A=.629;
rel=zeros(1,10);
app=zeros(1,10);
true_perct=zeros(1,10);
for i=1:length(rel)
    % real value
    rel(i)=A^(i);
    % approx value
    app(i)=floor(rel(i)*1000)/1000;
    %True percent error     
    true_perct(i)=(rel(i)-app(i))*100/rel(i);
end 
N=1:10;
plot(N,true_perct)
xlabel('N')
ylabel('True Relative Error')
title('Question 01')
hold on 
% after rounding 
% round
rel_r=round(rel,3);
app_r=round(app,3);
true_perct_r=(rel_r-app_r)./(rel_r)*100;
plot(N,true_perct_r)
grid on 
legend('Rel_ error without rounding','Rel_ error with rouning')
