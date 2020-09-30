clc
clear all
close all
% Ax=B
% x=A^-1 * B
P=250:10:1250;
A=[-0.866 0 0.5 zeros(1,3);
    -0.5 0 -.866 zeros(1,3);
    0.866 1 0 1 0 0;
    0.5 zeros(1,3) 1 0;
    0 -1 -.5 zeros(1,3);
    zeros(1,2) 0.866 0 0 1];
F1=[];
F2=[];
F3=[];
H1=[];
V1=[];
V2=[];
for i=1:length(P)
    
    B=[0;P(i);zeros(4,1)];
    x=inv(A)*B;
    F1=[F1 x(1)];
    if (x(2)>430)
        F2=[F2 0];
    else 
         F2=[F2 x(2)];
    end 
   
    F3=[F3 x(3)];
    H1=[H1 x(4)];
    if (x(5)>200)
        V1=[V1 0];
    else 
        V1=[V1 x(5)];
    end 
    
    V2=[V1 x(6)];
end 
plot(F1,P,'r','LineWidth',2,'Linestyle', '--')
hold on 
xlabel('Force')
ylabel('P')
grid on 
plot(F2,P,'b','LineWidth',2)
title('F vs P ')
legend ('F1',' F2')
disp(['Mean Values of F1 = ',num2str(mean(F1))])
disp(['Mean Values of F2 = ',num2str(mean(F2))])
disp(['Mean Values of F3 = ',num2str(mean(F3))])
disp(['Max Values of H1 = ',num2str(max(H1))])
disp(['Max Values of V1 = ',num2str(max(V1))])
disp(['Max Values of V2 = ',num2str(max(V2))])