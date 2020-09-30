function result=LongTermBill(w,d,h,m) 
% Makes the calculation the Long-Term Bill 
hours=h+(m/60); %adds hours and minutes 
hours=ceil(hours);%rounds to the nearest hour 
if(hours>=6) 
    LTbill=(60*w)+(9*d)+9; %adds the total bill 
else
    LTbill=(60*w)+(9*d)+(hours+1); %adds the total bill
end
result=LTbill
end 
