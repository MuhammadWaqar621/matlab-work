
clear; 
clc; 
% In starting, initailaising the value of all bands to 0 
band_1_Value = 0; 
band_2_Value = 0; 
band_3_Value = 0; 
band_4_Value = 0;
% Color code and their values 
color_Band = {'BLACK', 'BROWN', 'RED', 'ORANGE', 'YELLOW', 'GREEN', 'BLUE', 'VIOLET', 'GRAY', 'WHITE', 'NONE', 'SILVER', 'GOLD'}; 
color_Value = [0 , 1 , 2 ,3 , 4 , 5 , 6 , 7 , 8 , 9 , 20 ,10 , 5 ]; 
% Input the Colors of the di?erent color bands in CAPS 
band_1_input = input('Enter the Band-1 color in CAPS : ', 's'); 
for i=1:13 
    if(strcmp((band_1_input),color_Band(i))==1) 
        band_1_Value=color_Value(i); 
    end
end

band_2_input = input('Enter the Band-2 color in CAPS : ', 's');
for i=1:13 
    if(strcmp((band_2_input),color_Band(i))==1) 
        band_2_Value=color_Value(i); 
    end
end

band_3_input = input('Enter the Band-3 color in CAPS : ', 's'); 
for i=1:13 
    if(strcmp((band_3_input),color_Band(i))==1) 
        band_3_Value=color_Value(i); 
    end
end
band_4_input = input('Enter the Band-4 color in CAPS : ', 's'); 
for i=1:13 
    if(strcmp((band_4_input),color_Band(i))==1) 
        band_4_Value=color_Value(i); 
    end
end

resistance_Value = band_1_Value*10 + band_2_Value + power(10,band_3_Value); 
disp(['Resistance value of the resistor : ',num2str(resistance_Value), ' Ohms']);
% adding tolerance range 
if(band_4_Value==20) 
    range_1_value = resistance_Value - ((10*resistance_Value)/100); 
    range_2_value = resistance_Value + ((10*resistance_Value)/100); 
end
if(band_4_Value==10) 
    range_1_value = resistance_Value - ((5*resistance_Value)/100); 
    range_2_value = resistance_Value + ((5*resistance_Value)/100); 
end
if(band_4_Value==5) 
    range_1_value = resistance_Value - ((2.5*resistance_Value)/100); 
    range_2_value = resistance_Value + ((2.5*resistance_Value)/100); 
end
disp(['Resistance Value Range is from : ',num2str(range_1_value), ' to ',num2str(range_2_value), ' Ohms']);



