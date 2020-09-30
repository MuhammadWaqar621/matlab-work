EbN0_vector=10.^(EbN0dB_vector/10); 
BER_theory=0.5*(1-sqrt((EbN0_vector)./(1+EbN0_vector))); 
hold on; 
semilogy(EbN0dB_vector, BER_theory,'r')
legend('Rayleigh fading, Simulation','Rayleigh fading, Theory')