clear
clc
T=0:12;
D=[0,2,5,8,15,28,32,49,57,68,110,109,130];
vf=[];
af=[];
vb=[];
ab=[];
vc=[];
ac=[];
n=length(T);
for i=1:n-1
    vf(i)=D(i+1)-D(i);
end
disp('Velocity using forward difference is');
disp(vf);
for i=2:n
    vb(i-1)=D(i)-D(i-1);
end
disp('Velocity using backward difference is');
disp(vb);

for i=2:n-1
    vc(i-1)=(D(i+1)-D(i-1))/2;
end
disp('Velocity using central difference is');
disp(vc);

for i=2:n-1
    ac(i-1)=D(i+1)-2*D(i)+D(i-1);
end
disp('Acceleration using central difference is');
disp(ac);

for i=3:n
    ab(i-2)=D(i)-2*D(i-1)+D(i-2);
end
disp('Acceleration using backward difference is');
disp(ab);

for i=1:n-2
    af(i)=D(i+1)-2*D(i+1)+D(i);
end
disp('Acceleration using forward difference is');
disp(af);