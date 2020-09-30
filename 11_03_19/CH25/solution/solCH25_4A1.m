clc
clear all
% close all
EbN0dB_vector=0:3:15;       %make vector by the diff value 3
Eb=1;
L=5;
for snr_i=1:length(EbN0dB_vector)       %run the loop for length of vector 
    EbN0dB=EbN0dB_vector(snr_i);        %one by one access the vector 
    EbN0=10.^(EbN0dB/10);
    N0=Eb/EbN0;                             %db to decimal 
    sym_cnt=0;
    err_cnt=0;                              %reset the both counter 
    while err_cnt<100 % If you increase err_cnt (currently 100), the accuracy increases and time also increase.
        b=sign(rand-0.5);  %BPSK symbol {1,-1}
        s=sqrt(Eb/L)*b;
        for k=1:L
            h(k)=sqrt(1/2)*(randn+j*randn);
            n(k)=sqrt(N0/2)*(randn+j*randn);
            r(k)=h(k)*s + n(k);
        end
        
        [T1 T2]=max(r); % Refer to (25.9). To see how to use max( ).
        D=r(T2)*exp(-j*angle(h(T2))); %Refer to (25.9).
        
        b_hat=sign(real(D));
        if b_hat~=b;
            err_cnt=err_cnt+1;
        end
        sym_cnt=sym_cnt+1;
    end
    BER(snr_i)=err_cnt/sym_cnt
end
hold on
semilogy(EbN0dB_vector, BER,'b')
xlabel('E_b/N_0 [dB]')
ylabel('BER')
grid


