BER_AWGN=0.5*erfc(sqrt(EbN0_vector)); 
hold on; 
semilogy(EbN0dB_vector, BER_AWGN,'g')
legend('Rayleigh fading, Sim','Rayleigh fading, Theory' ,'AWGN') 
axis([0 20 1e-6 1])
