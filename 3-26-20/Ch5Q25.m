clc
clear all
WS=randi([10 50],24,1);
Vis=randi([1 10],24,1)/10;
stormData=[WS,Vis];
save stormtrack.dat stormData -ascii
disp('The following is the data from stromrack')
disp(stormData)
L=length(WS);
count=0;
i=0;
while count<4 && i<L
    i=i+1;
    if WS(i)>=30 && Vis(i)<=0.5
        count=count+1;
    else
        count=0;
    end 
end 
if count==4
    disp('Blizzard conditions were met.')
else
    disp('Blizzard conditions were not met.')
end 
