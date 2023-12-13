clc; clear; close all;

P1 = [-1 0]';
P2 = [1 0]';
P3 = [0 2]';

A1 = [P1 P2 P3];
A1 = [A1 
    1 1 1];

h = fill(A1(1,:), A1(2,:),'b');
axis([-10 10 -10 10]);
axis square
hold on 

N = 50;

t1 = transGeom(1,4,0);
t2 = transGeom(0,0, deg2rad(80));
t3 = transGeom(2, -5, 0);

for n = linspace(0, 1, N)
    t1 = transGeom(3*n,4*n,0);
    An = t1* A1;

    h.Vertices = An';
    pause(0.1);
end
N = 50
for r = linspace(0, 1, N)
    t2 = transGeom(0,0,deg2rad(80));
    An = t2 * An;
    %fill(An(1,:), An(2,:), 'c');
    h.Vertices = An';
    pause(0.1)
end

for n = linspace(0, 1, N)
    t3 = transGeom(2*n,-5*n,0);
    An = t3* An;

    h.Vertices = An';
    pause(0.1);
end
