function [energy]=PartAQ03(data)
    power=data(:,2).*data(:,3);
    time=data(:,1);
    energy=trapz(time,power);
end 