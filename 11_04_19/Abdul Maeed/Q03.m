clc
clear all
while (1)
    x=input('Enter Postive value of x :');
    if (x<0)
        disp('You Enter the Negtive Number ')
    elseif (x>0)
        break
    end 
end 
f=(3*cos(x)-sin(x))*exp(-0.2*x)