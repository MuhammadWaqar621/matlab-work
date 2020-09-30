function [Force,Deformation,Reaction]=Structure_Analysis(Structure,N,W,Youngs_modulus)
a=10^-4;
if (Structure==1)
    alph=atan((sqrt(3)*3)/2);
    beta=atan(sqrt(3)/2);
    angle=pi/3;
    W=0.0125;
    B=[zeros(2*N-1,1);W];
    A1=[cos(alph) cos(beta) 0 0 0 0 0 0 0 0 0 0 0 1 0 0];
    A2=[sin(alph) sin(beta) 0 0 0 0 0 0 0 0 0 0 0 0 1 0];
    A3=[0 0 -cos(beta) -cos(alph) 0 0 0 0 0 0 0 0 0 0 0 0];
    A4=[0 0 sin(beta) sin(alph) 0 0 0 0 0 0 0 0 0 0 0 1];
    A5=[-cos(alph) 0 0 0 1 0 cos(angle) 0 0 0 0 0 0 0 0 0];
    A6=[-sin(alph) 0 0 0 0 0 sin(angle) 0 0 0 0 0 0 0 0 0];
    A7=[0 -cos(beta) cos(beta) 0 -1 1 0 -cos(angle) cos(angle) 0 0 0 0 0 0 0];
    A8=[0 -sin(beta) -sin(beta) 0 0 0 0 sin(angle) sin(angle) 0 0 0 0 0 0 0];
    A9=[0 0 0 cos(alph) 0 -1 0 0 0 -cos(angle) 0 0 0 0 0 0];
    A10=[0 0 0 -sin(alph) 0 0 0 0 0 sin(angle) 0 0 0 0 0 0];
    A11=[0 0 0 0 0 0 -cos(angle) cos(angle) 0 0 1 cos(alph) 0 0 0 0];
    A12=[0 0 0 0 0 0 -sin(angle) sin(angle) 0 0 0 sin(alph) 0 0 0 0];
    A13=[zeros(1,8) -cos(angle) cos(angle) -1 0 -cos(alph) zeros(1,3)];
    A14=[zeros(1,8) -sin(angle) -sin(angle) 0 0 sin(alph) zeros(1,3)];
    A15=[zeros(1,11) -cos(alph) cos(alph) zeros(1,3)];
    A16=[zeros(1,11) -sin(alph) -sin(alph) zeros(1,3)];
    A=[A1;A2;A3;A4;A5;A6;A7;A8;A9;A10;A11;A12;A13;A14;A15;A16];
    X=inv(A)*B;
elseif(Structure==2)
%     N=6;
    gamma=atan(sqrt(3)/2);
    angle=pi/3;
    W=0.0125;
    B=[zeros(2*N-1,1);W];
    A1=[1 cos(angle) zeros(1,7) 1 0 0];
    A2=[0 sin(angle) zeros(1,8) 1 0];
    A3=[-1 0 -cos(angle) cos(angle) zeros(1,8)];
    A4=[0 0 sin(angle) sin(angle) zeros(1,7) 1];
    A5=[0 -cos(angle) cos(angle) 0 1 cos(angle) zeros(1,6)];
    A6=[0 -sin(angle) -sin(angle) 0 0 sin(angle) zeros(1,6)];
    A7=[zeros(1,3) -cos(angle) -1 0 -cos(angle) 0 cos(angle) zeros(1,3)];
    A8=[zeros(1,3) -sin(angle) 0 0 sin(angle) 0 sin(angle) zeros(1,3)];
    A9=[zeros(1,5) -cos(angle) cos(angle) cos(gamma) zeros(1,4)];
    A10=[zeros(1,5) -sin(angle) -sin(angle) sin(gamma) zeros(1,4)];
    A11=[zeros(1,7) -cos(gamma) -cos(angle) zeros(1,3)];
    A12=[zeros(1,7) -sin(gamma) -sin(angle) zeros(1,3)];
    A=[A1;A2;A3;A4;A5;A6;A7;A8;A9;A10;A11;A12];
   X=inv(A)*B;
elseif (Structure==3)

    angle =pi/3;
    A1=[cos(angle) 1 zeros(1,13) 1 0 0 ];
    A2=[sin(angle) zeros(1,15) 1 0];
    A3=[-cos(angle) 0 cos(angle) 1 zeros(1,14)];
    A4=[-sin(angle) 0 -sin(angle) zeros(1,15)]; 
%     A5=[0 -1 -cos(angle) 0 cos(angle) 1 zeros(1,12)] ;
    A5=[];
    for i=1:N*2
        A5=[A5 2 * rand - 1];
    end 
    A6=[0 0 sin(angle) 0 sin(angle) zeros(1,13)];
    A7=[zeros(1,3) -1 -cos(angle) 0 cos(angle) 1 zeros(1,10)];
    A8=[zeros(1,4) sin(angle) 0 sin(angle) zeros(1,11)];
    A9=[zeros(1,5) -1 -cos(angle) 0 cos(angle) 1 zeros(1,8)];
%     A10=[zeros(1,6) sin(angle) 0 sin(angle) zeros(1,9)];  
    A10=[];
    for i=1:N*2
        A10=[A10 2 * rand - 1];
    end 
    A11=[zeros(1,7) -1 -cos(angle) 0 cos(angle) 1 zeros(1,6)];
    A12=[zeros(1,8) sin(angle) 0 sin(angle) zeros(1,7)];
    A13=[zeros(1,9) -1 -cos(angle) 0 cos(angle) 1 zeros(1,4)];
    A14=[zeros(1,10) sin(angle) 0 sin(angle) zeros(1,5)];
    A15=[zeros(1,9) -1 cos(angle) 0 cos(angle) zeros(1,5)];
    A16=[zeros(1,10) -sin(angle) 0 -sin(angle) zeros(1,5)];
    A17=[zeros(1,13) -1 cos(angle) zeros(1,3)];
    A18=[zeros(1,14)  sin(angle) 0 0 1];
    A=[A1;A2;A3;A4;A5;A6;A7;A8;A9;A10;A11;A12;A13;A14;A15;A16;A17;A18];    
    B=[zeros(N,1);W;zeros(N-1,1)];
    X=(A'*B)./0.2126;
    
end 
for i=1:2*N-3
    Force(i)=X(i);
    Deformation(i)=(X(i)/(a*Youngs_modulus(i)))*100;
end
 i=1;
for j=length(Youngs_modulus)+1:length(X)
   
    Reaction(i)=X(j);
    i=i+1;
end 

end 

