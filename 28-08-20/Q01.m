clc
clear all
close all
domainVec=[-3 5];
N=20;
rootsVec=[3 4 6];
[tVec,nVec,xVec]=fxNthOrderPolyDTSignal(domainVec,N,rootsVec);