clc
clear
close
[X,Y,Z]=sphere(50);
surf(X,Y,Z,X)
axis vis3d tight off
for k=1:25
    view(-37.5 + 15*(k-1),30)
    m(k)=getframe(gcf);
end 
movie(gcf,m)