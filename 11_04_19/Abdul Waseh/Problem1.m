clc; clear;

%% VDW

R=8.314e-5;
t=400:20:600;
tc=[190.6 305.3 369.8 282.3 511.8];
pc=[45.99 48.72 42.48 50.40 45.02];
a=(27 * R^2 * tc.^2) ./ (64 * pc);
b=(R * tc)./(8 * pc);
V=0.001;

P_fluidX= [30.7 33.1 35.3 37.3 38.1 40 41.9 44.5 45.3 46.4 50];
Z_fluidX= (P_fluidX*V)./(R*t);


for j= 1:length(t)
    for i=1:length(pc)
    
    p(i,j)= ((R*t(j))/(V-b(i)))-(a(i)/ V^2);
    z(i,j)= (p(i,j)*V)/(R*t(j));
    end
end
figure(1)
plot(t,p,t,P_fluidX,'-+k')
legend('Methane','Ethane','Propane','Ethylene','Cyclopentane','Fluid X');
xlabel('Temperature, C');
ylabel('Pressure, Bar');
title('P-T using van der Wal eqn of state')

%% RK

clearvars;

R=8.314e-5;
t=400:20:600;
tc=[190.6 305.3 369.8 282.3 511.8];
pc=[45.99 48.72 42.48 50.40 45.02];
a= (0.42748)*((R^2 * tc.^2.5)./pc);
b= (0.08664)*((R*tc)./pc);
V=0.001;

P_fluidX= [30.7 33.1 35.3 37.3 38.1 40 41.9 44.5 45.3 46.4 50];
Z_fluidX= (P_fluidX*V)./(R*t);

for j= 1:length(t)
    for i=1:length(pc)
    
    p(i,j)= ((R*t(j))/(V-b(i)))-(a(i) / (V*sqrt(t(j))*(V+b(i))));
    z(i,j)= (p(i,j)*V)/(R*t(j));
    end
end
figure(2)
plot(t,p,t,P_fluidX,'-+k')
xlabel('Temperature, C');
ylabel('Pressure, Bar');
title('P-T using Redlich-Kwong eqn of state')
legend('Methane','Ethane','Propane','Ethylene','Cyclopentane','Fluid X');

%% SRK

clearvars;

R=8.314e-5;
t=400:20:600;
tc=[190.6 305.3 369.8 282.3 511.8];
pc=[45.99 48.72 42.48 50.40 45.02];
omega=[0.012 0.1 0.152 0.087 0.196];
a= (0.42748)*((R^2 * tc.^2)./pc);
b= (0.08664)*((R*tc)./pc);
V=0.001;

P_fluidX= [30.7 33.1 35.3 37.3 38.1 40 41.9 44.5 45.3 46.4 50];
Z_fluidX= (P_fluidX*V)./(R*t);

for j= 1:length(t)
    for i=1:length(pc)
        
    Tr= t(j)/tc(i);
    alpha= (1+(0.48 + 1.574*omega(i) - 0.176*omega(i)^2)*(1 - sqrt(Tr)))^2;
    
    p(i,j)= ((R*t(j))/(V-b(i)))-((a(i)*alpha) / (V*(V+b(i))));
    z(i,j)= (p(i,j)*V)/(R*t(j));
    end
end
figure(3)
plot(t,p,t,P_fluidX,'-+k')
legend('Methane','Ethane','Propane','Ethylene','Cyclopentane','Fluid X');
xlabel('Temperature, C');
ylabel('Pressure, Bar');
title('P-T using Soave-Redlich-Kwong eqn of state')

%% PR

clearvars;

R=8.314e-5;
t=400:20:600;
tc=[190.6 305.3 369.8 282.3 511.8];
pc=[45.99 48.72 42.48 50.40 45.02];
omega=[0.012 0.1 0.152 0.087 0.196];
a= (0.45724)*((R^2 * tc.^2)./pc);
b= (0.07780)*((R*tc)./pc);
V=0.001;

P_fluidX= [30.7 33.1 35.3 37.3 38.1 40 41.9 44.5 45.3 46.4 50];
Z_fluidX= (P_fluidX*V)./(R*t);

for j= 1:length(t)
    for i=1:length(pc)
    
    Tr= t(j)/tc(i);
    alpha= (1+(0.37464 + 1.54226*omega(i) - 0.26992*omega(i)^2)*(1 - sqrt(Tr)))^2;    
    
    p(i,j)= ((R*t(j))/(V-b(i)))-(a(i)/ V^2);
    z(i,j)= (p(i,j)*V)/(R*t(j));
    end
end
figure(4)
plot(t,p,t,P_fluidX,'-+k')
legend('Methane','Ethane','Propane','Ethylene','Cyclopentane','Fluid X');
xlabel('Temperature, C');
ylabel('Pressure, Bar');
title('P-T using Peng-Robinson eqn of state')