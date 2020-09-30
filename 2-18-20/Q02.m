clc
clear all 
sys1=tf(4,1)
sys2=tf(2,[1 9 8])
sys3=tf(1,[1 0])
sysh=tf(0.2,1)
Output=feedback(series(series(feedback(sys2,sysh),sys3),sys2),1)
