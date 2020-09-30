clc
clear all
v=[4000:-500:1000];
r=nthroot((3.*v)./(4*pi),3);
s= 4* pi .*r.^2  ;
disp ('  V  |  R  |  S ');
disp('--------------------')
for (i=1:length(v))
    disp ([num2str(v(i)), ' | ',num2str(round(r(i)*10)/10), ' | ',num2str(round(s(i)*10)/10)])
end 