clc
clear all
n=1;
while(1)
    appr=Leibniz_a(n);
    error=abs(appr-pi);
    if error<0.0001
        break
    end
    n=n+1;
        
end 