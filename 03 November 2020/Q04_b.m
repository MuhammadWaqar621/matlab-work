clc
clear 
val=input('enter positive value: ');
while (1)
    if val<0
        val=input('enter positive value: ');
    else 
        break
    end 
end
generate_fb(val)