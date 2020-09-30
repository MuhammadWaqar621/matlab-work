clear all
clc
close all
% clear all workspace and command window and close all figure 
EbN0dB_vector=0:2:20;
% make vector like vale 0 2 4 6 ... 20 
Eb=1; 

for snr_i=1:length(EbN0dB_vector)   %repeat the loop for the length of vector 
    EbN0dB=EbN0dB_vector(snr_i);    %load one by one value of the vector 
    EbN0=10.^(EbN0dB/10);           %convert from db to back value 
    N0=Eb/EbN0;                     %decimal value 
    sym_cnt=0;                      %counter for count the error and system count 
    err_cnt=0;
    h=sqrt(1/2)*(randn+j*randn);
    while err_cnt<500               %repeat the loop for count_Error less then 500
        s=sqrt(Eb)*sign(rand-0.5);  %creat the s is negtive or postive 
        % create h and n by calling randn funcation and sqrt use
        n=sqrt(N0/2)*(randn+j*randn);
        
        r=h*s+n;                    %calculatte the value r 
        
        D=r*exp(-j*angle(h));       %calculate the angle and express in exp form 
        s_hat=sign(D);        %calculate real value 
        if s_hat~=sign(s)           %if the sign  is differnet it error increment 
            err_cnt=err_cnt+1;
        end
        sym_cnt=sym_cnt+1;          % otherwise system counter increment 
    end
    BER(snr_i)=err_cnt/sym_cnt      %BER store the ratio b/w error count vs system count
end
% plot the vecter and BER value and label xaxis and yaxis 
figure
semilogy(EbN0dB_vector, BER)
xlabel('E_b/N_0 [dB]')
ylabel('BER')
grid
