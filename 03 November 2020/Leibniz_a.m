function output=Leibniz_a(n)
temp=[];
for i=1:n
    temp=[temp sum(-1)^(i+1) /(2*i -1)];
end 
output=4*sum(temp);
end 