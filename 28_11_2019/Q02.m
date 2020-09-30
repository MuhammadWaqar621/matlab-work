clc
clear all 
close all
syms X s
diff_X=s*X;
second_diff_X=diff_X*s;
m=20;
c=6;
tf_=1/(m*s^2+ c*s)

F=50;
X(s)=(F)*tf_;
part_a=ilaplace(X(s))
figure (1)
fplot(part_a)
xlabel('time')
ylabel('Amplitude')
title('Part A')
F=2/s;
X(s)=(F)*tf_;
part_b=ilaplace(X(s))
figure (2)
fplot(part_b)
xlabel('time')
ylabel('Amplitude')
title('Part B')
F=2.5;
X(s)=(F)*tf_;
part_c=ilaplace(X(s))
t=[0:0.1:20];
part_c=5/12 - (5*exp(-(3*t)/10))/12;
figure (3)
plot(t,part_c)
xlabel('time')
ylabel('Amplitude')
title('Part C')