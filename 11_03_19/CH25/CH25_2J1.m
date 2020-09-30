clear
EbN0dB_vector=0:2:20;
Eb=1;
for snr_i=1:length(EbN0dB_vector)
    EbN0dB=EbN0dB_vector(snr_i);
    EbN0=10.^(EbN0dB/10);
    N0=Eb/EbN0;
    sym_cnt=0;
    err_cnt=0;
    while err_cnt<500
        s=sqrt(Eb)*sign(rand-0.5)+j*sqrt(Eb)*sign(rand-0.5);
        h=sqrt(1/2)*(randn+j*randn);
        n=sqrt(N0/2)*(randn+j*randn);
        r=h*s+n;
        D=r*exp(-j*angle(h));
        s_hat=sign(real(D));
        s_hat2=sign(imag(D));
        if sign(real(s)) ~= s_hat
            err_cnt=err_cnt+1;
        end
        if sign(imag(s)) ~= s_hat2
            err_cnt=err_cnt+1;
        end
        sym_cnt=sym_cnt+2;
    end
    BER(snr_i)=err_cnt/sym_cnt
end
figure
semilogy(EbN0dB_vector, BER)
xlabel('E_b/N_0 [dB]')
ylabel('BER')
grid
