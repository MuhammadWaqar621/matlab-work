clc
clear 
% Q01
for i=1:5
    for j=1:10
        KE=kinetic_energy(i,j);
        disp(['Kinetic Energy at m=',num2str(i),' and v=',num2str(j),' is ',num2str(KE)])
    end 
end 