clc
clear all 
G1=tf([1 1 ],[1 2 8])
G2=tf(2,[1 3])
part_a=series(G1,G2)
part_b=parallel(G1,G2)
part_c=feedback(G1,G2)