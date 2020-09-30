clc
clear all
disp('Original Vector :')
vector = randi([-10, 10], 1, 20)
c = 0;
neg = 0;
while true
    c = c + 1;
    neg = 0;    
    for i = 1:length(vector)
        if vector(i) < 0
            neg = neg + 1;
            vector(i) = randi([-10 10], 1, 1);
        end
    end
    if neg == 0
        break;
    end
end
disp('After Updated :')
disp(vector);
fprintf('It took %d iterations to generate the array\n', c)

