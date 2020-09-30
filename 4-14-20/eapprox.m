function []=eapprox(K)
a=randi(K,K,1);
Instance=histcounts(a,K);
J=sum(Instance==0);
e=K/J;
disp('The value of e is')
disp(e);
end 
