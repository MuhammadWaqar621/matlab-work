clc
clear all
% given data 
z_hexane=0.31;
z_octane=0.24;
z_heptane=0.45;
p=5625.9 ;
% Task 01
% log p=A - (B/ (T+C))
% find T for all given value 
% Rearrange equation 
% Log p -A= -B/(T+C)
% T+C=-B/((log (p)-A))
% T=-B/((log (p)+A)) -C
Hex_Tb= -1171.17/ (log10(p)-6.8760) - 224.4080
Hep_Tb= -1264.9/ (log10(p)-6.8968) - 216.5440
oct_Tb= -1351.99/ (log10(p)-6.9187) - 209.155


% Task 2
Avg_T=mean([Hex_Tb Hep_Tb oct_Tb])
% varify the value of p hold is true 
syms Tb L
equ=z_hexane*10^(6.876 -(1171.17/(Tb+224.4080))) + z_octane*10^(6.9187 -(1351.99/(Tb+209.155)))+ z_heptane*10^(6.8968 -(1264.9/(Tb+216.5440))) -p ;
% Tb After solve the equation 
Tb_=solve (equ,Tb)


% Task 3 
T=187;
% p_set=10 ^ (A- B/(T+C))
P_set_hex=10^(6.876 -(1171.17/(T+224.4080)))
P_set_hep=10^(6.8968 -(1264.9/(T+216.5440)))
P_set_oct=10^(6.9187 -(1351.99/(T+209.155)))

% k_i=P_set/p
K_hex=P_set_hex/p
K_hep=P_set_hep/p
K_oct=P_set_oct/p

equ2=(z_hexane)/(L*(1-K_hex)+K_hex) + (z_heptane)/(L*(1-K_hep)+K_hep) +  (z_octane)/(L*(1-K_oct)+K_oct) -1;
L_=solve(equ2,L);
% simplify L
L_=0.1099
% V+L=1
V=1-L_
% y=(Z*K)/(1+V*(K-1))_
y_hex=(z_hexane*K_hex)/(1+V*(K_hex-1))
y_hep=(z_heptane*K_hep)/(1+V*(K_hep-1))
y_oct=(z_octane*K_oct)/(1+V*(K_oct-1))

% for the proof we can add all y value
sum_=sum([y_hex y_hep y_oct])