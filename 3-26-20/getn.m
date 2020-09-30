
function n = getn
n = input('Enter a positive integer for n: ');
% Error check to ensure n is a positive integer
while n ~= int32(n) || n <= 0
    n = input('Invalid! Enter a positive integer for n: ');
end
end