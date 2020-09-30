clc
clear all
close all
num=[1];
den=[1 6 18 30 25];
tf_=tf(num,den)
rlocus(tf_)