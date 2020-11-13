function v=rocket_vel(t)
v=[];
for i=1:length(t)
    if(t(i)>=0 && t(i)<=8)
        v=[v 10*t(i)^2-5*t(i)];
    elseif(t(i)>=8 && t(i)<=16)
        v=[v 624-3*t(i)];
    elseif(t(i)>=16 && t(i)<=26)
        v=[v 36*t(i)+12*(t(i)-16)^2];
    elseif(t(i)>26)
        v=[v 2136*exp(-.1*(t(i)-26))];
    else
        v=[v 0]; 
    end 
    
end 
end 