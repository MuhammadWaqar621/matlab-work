clc
clear all
close all
num=[1];
den=[1 2 2 0];
tf_=tf(num,den)
rlocus(tf_)