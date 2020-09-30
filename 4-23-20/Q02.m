clc
clear all
close all
num=[1 5 6];
den=[1 1 0];
tf_=tf(num,den)
rlocus(tf_)