function [finalValue] = stockExhance(initialValue,price,buy,sell) 
initialValue_=initialValue;
finalValue=0;
if initialValue < min(price)
    finalValue=initialValue;
else 
    while(initialValue>=0) 
        for i=1:length(buy)
            if initialValue> buy(i)*price(i)
                initialValue=initialValue-9.95-buy(i)*price(i);
            else 
                finalValue=finalValue+sell(i)*price(i);
                initialValue=initialValue-9.95;
            end
            
        end 

    end 
end  
disp(['With an initial investment of ',num2str(initialValue_),' TL,',' the final value is ',num2str(finalValue)])
end 