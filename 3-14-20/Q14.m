clc
clear all
close all
% a)
% define function height handle 
% b)
he=@height_handle;
fplot(he,[0 60]);
% c)
fzero(he,35)