%% Exercicio 5

addpath ../Lib
clc;
clear all;
close all;

L1 = 2;
L2 = 1;
Qi = [0 0]';
Qf = [pi/3 pi/3]';
[P,F] = seixos3(0.2)

DH = [0 L1 0 0;
      0 L2 0 0]

MQ = linspaceVect(Qi, Qf, 7);
MDH = GenerateMultiDH(DH, MQ)

for i = 1:7
    AA = Tlinks(MDH(:,:,i));
    Org = LinkOrigins(AA);
    h = DrawLinks(Org);
    H = DrawFrames(AA, P,F)
    hold on
end


%% Exercicio 6

addpath ../Lib
clc;
clear all;
close all;

L1 = 1;
L2 = 2;

d3max = 1;

Qi = [0 0 0]'
Qf = [0 pi/3 1]'
N = 5
t = [0  0 1]


[P,F] = seixos3(0.2)

DH = [0 L1 0 0;
      0 L2 0 0]

MQ = linspaceVect(Qi, Qf, N);
MDH = GenerateMultiDH(DH, MQ)

for i = 1:N
    AA = Tlinks(MDH(:,:,i));
    Org = LinkOrigins(AA);
    h = DrawLinks(Org);
    H = DrawFrames(AA, P,F)
    hold on
end