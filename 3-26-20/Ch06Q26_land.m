clc
clear all
close all
inacres=askacres;
[sqmi1, hectares]=convacres(inacres);
dispareas(inacres,sqmi1,hectares)
