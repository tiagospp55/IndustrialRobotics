clc;clear all;close all;
addpath ././Lib
points=[1 -1 0 
        1 1 0 
        -1 1 0 
        -1 -1 0     
        0 0 2 ];

hpoint= [points';ones(1,size(points,1))];

Faces1 = 1 2 5 5 
         2 3 5 5
         3 4 5 5
         4 1 5 5
         1 2 3 4];

fColor = [ 1 2 3 4 5]';

hpoint2 = mtrans()


