x=2;
y=4;
z=6;
for i=1:3
    x=2*x;
    while x<5
        y=y+1;
        z=z*x;
        x=y;
    end 
end
x
y
z