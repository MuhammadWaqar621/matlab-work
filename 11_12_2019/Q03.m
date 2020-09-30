clc
clear all
x=[31 70 92 5 47 88 81 73 51 76 80 90 55 23 43 98 36 87 22 61 19 69 26 82 89 99 71 59 49 64];
n=sum(0<=x & x<=19);
fprintf('Grades between 0 and 19  %d students\n', n);
n=sum(20<=x & x<=39);
fprintf('Grades between 20 and 39  %d students\n', n);
n=sum(40<=x & x<=59);
fprintf('Grades between 40 and 59  %d students\n', n);
n=sum(60<=x & x<=79);
fprintf('Grades between 60 and 79  %d students\n', n);
n=sum(80<=x & x<=100);
fprintf('Grades between 80 and 100  %d students\n', n);