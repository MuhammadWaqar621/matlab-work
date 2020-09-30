clc
clear all
close all
num=[1 1];
den=[1 3 3.94];
tf_=tf(num,den)
rlocus(tf_)