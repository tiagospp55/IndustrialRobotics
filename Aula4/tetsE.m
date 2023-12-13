clc
close all
clear all
addpath 'C:\Users\tiago\OneDrive\Ambiente de Trabalho\RI\Lib'

dh = [-pi/4 1 0 0;
       pi/2 1.5 0 0;
       -pi/3 0.5 0 0];

org = LinkOrigins(Tlinks(dh))
figure(1)

DrawLinks(org)

figure(2)
[P,F] = seixos3(0.5)
DrawFrames(Tlinks(dh),P,F)
axis equal