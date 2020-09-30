function PartAQ02(data)
    close all
    power=data(:,2).*data(:,3);
    plot(data(:,1),power)
    [max_ ind]=max(power);
    hold on 
    grid on 
    plot(ind-1,max_,'o')
    xlabel('time')
    ylabel('power')
end 