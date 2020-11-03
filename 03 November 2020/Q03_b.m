clc
clear 
n=[10 25 50 100]
approx=[]
for i=1:length(n)
    approx=[approx Leibniz_a(n(i))];
end 
error=abs (approx-pi)