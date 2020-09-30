clc
clear all
close all
x1 =669.252;
x2 =656.485;
h=(x1-x2)/10;
XYZ=664;
x_i=x2:h:x1;
f=[];
g=[];
xaxis_=[x_i(1)];
x=xaxis_;
f=-3.8*(x-XYZ).^2 - 8.6*(x-XYZ)-500-XYZ
g=3.8*(x-XYZ).^2 + 8.6*(x-XYZ)-800-XYZ
for i=1:length(x_i)
    x=x_i(1)+(i*h);
    xaxis_=[xaxis_ x]
    f_top=-3.8*(x-XYZ).^2 - 8.6*(x-XYZ)-500-XYZ
    f2_bottom=3.8*(x-XYZ).^2 + 8.6*(x-XYZ)-800-XYZ
    f=[f f_top];
    g=[g f2_bottom];
end 
f=f(1:11)
g=g(1:11)
plot(xaxis_(1:11),f(1:11))
hold on 
plot(xaxis_(1:11),g(1:11))
xlabel('---->x')
ylabel('top and bottom value ')
legend('top','bottom')
top_area=(h*[f(1)+sum(2*f(2:end-1))+f(end)])/2;
bottom_area=(h*[g(1)+sum(2*g(2:end-1))+g(end)])/2;
trap_area=top_area-bottom_area

simp_top_area=h*(f(1)+sum(4*f(2:2:10))+sum(2*f(3:2:9))+ f(11))/3;
simp_bottom_area=h*(g(1)+sum(4*g(2:2:10))+sum(2*g(3:2:9))+ g(11))/3;
simp_net_area=simp_top_area-simp_bottom_area


rec_top=h*sum(f);
rec_bottom=h*sum(g);
rec_net_area=rec_top-rec_bottom