% Q03
clc
clear
first=input('enter first number :');
oper=input('enter operator :','s');
second=input('enter second number :');
while (1)
    if(second==0)
        second=input('Re_enter second number :');
    else 
        break 
    end 
end
while (1)
    if(oper=='+')
        disp(['Result is :',num2str(first+second)])
        break 
    elseif(oper=='-')
        disp(['Result is :',num2str(first-second)])
        break
    elseif(oper=='*')
        disp(['Result is :',num2str(first*second)])
        break
    elseif(oper=='/')
        disp(['Result is :',num2str(first/second)])
        break
    else 
        oper=input('Re_enter operator :','s');
    end 
end 