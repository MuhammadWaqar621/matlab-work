clc
clear all
a=6+2i;
part_b=imag(a)
b=randi([1,5234],1)
% %part_d
if (b<5234/2)
       disp('yes less than 5234')
else 
    disp(' not less than')
end 
if (isprime(b))
    disp('yes prime ')
else 
    disp('not prime')
end 