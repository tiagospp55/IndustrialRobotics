clear all;
close all;
clc;
[P,F]=seixos3(1);

%representar objeto
h=patch('Vertices', P(1:3, :)', 'Faces', F, 'Facecolor', 'g');

grid on; axis on; hold on;
xlabel('x'); ylabel('y'); zlabel('z')
axis([-1 6 -1 7 -1 6])
view(110, 15)
    
%objeto 1 - trans Z e rotação local de -90 em xx
T1=trans(0,0,5)*rotx(-pi/2);

P1=T1*P;
h1=patch('Vertices', P1(1:3, :)', 'Faces', F, 'Facecolor', 'b');

%objeto 2
T2=trans(0,6,5)*rotx(-pi/2)*roty(pi/2);
P2=T2*P;
h2=patch('Vertices', P2(1:3, :)', 'Faces', F, 'Facecolor', 'b');


%objeto 3
T3=trans(4,6,5)*rotx(-pi/2)*roty(pi/2)*rotx(-pi/2);
P3=T3*P;
h3=patch('Vertices', P3(1:3, :)', 'Faces', F, 'Facecolor', 'b');

%objeto 4

T4=trans(4,6,0)*rotx(-pi/2)*roty(pi/2)*rotx(-pi/2)*roty(pi/2);
P4=T4*P;
h4=patch('Vertices', P4(1:3, :)', 'Faces', F, 'Facecolor', 'b');

%Objeto 5
T5 = trans(4,0,0)*rotx(-pi/2)*roty(pi/2)*rotx(-pi/2)*roty(pi/2)*rotx(-pi/2);
P5=T5*P;
h5=patch('Vertices', P5(1:3, :)', 'Faces', F, 'Facecolor', 'b');

