
function [code,amount,duration,intensity]=getStormData
mydata = load('mydata.dat');
code=[];
amount=[];
duration=[];
intensity=[];
for i = 1:length(mydata)
    code= [code;mydata(i, 1)];
    amount = [amount; mydata(i, 2)];
    duration=[duration; mydata(i, 3)];
    intensity=[intensity; mydata(i, 2) / mydata(i, 3)];
end
end 