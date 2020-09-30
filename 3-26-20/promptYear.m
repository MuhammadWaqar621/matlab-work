function out=promptYear
out=input ('Enter a postive integer for n:');
while out~=fix(out) | out<0;
    out=input('Please try again, enter postive number: ');
end 
end 
