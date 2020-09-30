clc
clear all
n=[1:15];
x=10.^(-n);
f=(sqrt(4 + x)-2)./x;
g=(x-sin(x))./x.^3;
fprintf('Part B \n \n n|\tf(x)|\tg(x)\n') 
for i=1:length(n)
    disp([num2str(n(i)), '  | ',num2str(f(i)),' | ',num2str(g(i))])
end 
fprintf('\n\nPart C \n\n f(x)')
f1=vpa(f);
g1=vpa(g);
error_f=f-f1;
for i=1:length(n)
    disp(f1(i))
end 
fprintf('\ng(x)\n\n')
for i=1:length(n)
    disp(g1(i))
end 