clc
clear all
close all
A=20;
w=3;
time=0:0.01:20;
displacement=A*sin(w.*time);
figure(1)
plot(time,displacement)
title ('Original Plot ')
xlabel('time')
ylabel('Displacement')
for i=1:length(displacement)
    if (displacement(i)>0)
        displacement(i)=max(displacement);
    else 
        displacement(i)=0;
    end
end
 figure (2)
histogram (displacement)
title('Count the Max and zero in displacement')
xlabel('time')
ylabel('Quantity')
