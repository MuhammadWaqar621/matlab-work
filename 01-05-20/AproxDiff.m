function  AproxDiff (a, b)
%extra credit part a 
dff_a=diff(a);
dff_b=diff(b);
output = dff_a./dff_b;
disp('output is: ');
disp(output); 
end 
