%% Solution for the Soave-Redlich-Kwong Eqn
clearvars; clc;
syms Z

prop=zeros(2,4);
prop(1,:)= [1 0 0.08664 0.42748];
prop(2,:)= [1+sqrt(2) 1-sqrt(2) 0.07780 0.45724];
T=558.15;
Tc=592;
Tr=T/Tc;
omega=0.266;
ZGuess=1;

Pr= 1e-5:1e-2:1;
Zsrk=zeros(length(Pr));

for j=1:length(Pr)
    
    beta = prop(1,3) * (Pr(j) /Tr);
    a_srk = (1+(0.48 + 1.574*omega - 0.176*omega^2)*(1 - sqrt(Tr)))^2;
    q = (prop(1,4) * a_srk) / (prop(1,3) * Tr);
    Zsrk(j) =fzero(@(Z) 1 + beta - q*beta * ((Z - beta) / ((Z + beta * prop(1,2))*(Z + beta * prop(1,1))))-Z,ZGuess);
    
end

figure(1)
plot(Pr,Zsrk,'r');
title('P_r vs Z using SRK EOS');
xlabel('P_r, Bar');
ylabel('Z');
grid on

%% Solution for the Peng-Robinson Eqn
clearvars; clc;
syms Z

prop=zeros(2,4);
prop(1,:)= [1 0 0.08664 0.42748];
prop(2,:)= [1+sqrt(2) 1-sqrt(2) 0.07780 0.45724];
T=558.15;
Tc=592;
Tr=T/Tc;
omega=0.266;
ZGuess=1;

Pr= 1e-5:1e-2:1;
Zpr=zeros(length(Pr));

for j=1:length(Pr)
    
    beta = prop(2,3) * (Pr(j) /Tr);
    a_pr= (1+(0.37464 + 1.54226*omega - 0.26992*omega^2)*(1 - sqrt(Tr)))^2;
    q = (prop(2,4) * a_pr) / (prop(2,3) * Tr);
    Zpr(j) =fzero(@(Z) 1 + beta - q*beta * ((Z - beta) / ((Z + beta * prop(2,2))*(Z + beta * prop(2,1))))-Z,ZGuess);
    
end

figure(2)
plot(Pr,Zpr,'k');
title('P_r vs Z using PR EOS');
xlabel('P_r, Bar');
ylabel('Z');
grid on