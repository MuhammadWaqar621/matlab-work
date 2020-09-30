clc
clear all
close all
num=[1];
den=[1 6 8 0];
tf_=tf(num,den)
rlocus(tf_)