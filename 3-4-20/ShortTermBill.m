
function result=ShortTermBill(w,d,h,m)
% Makes the calculation the Short-Term Bill
minutes=(((h*60)+m)-30);
MinutesPrice=minutes/20;
MinutesPrice=ceil(MinutesPrice);
WeekPrice=7*32; %price to stay in st parking for a week
if(MinutesPrice>=32)
    STbill=(WeekPrice*w)+(32*d)+32+30*2; % adds the total bill
else
    STbill=(WeekPrice*w)+(32*d)+MinutesPrice+30*2; %adds the total bill
end 
result=STbill;
end
