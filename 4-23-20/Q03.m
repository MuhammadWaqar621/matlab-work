clc
clear all
close all
num=[1 4];
den=[1 4.8 7.84 3.7];
tf_=tf(num,den)
rlocus(tf_)