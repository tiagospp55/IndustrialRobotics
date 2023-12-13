clc;close all; clear all;

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
MDH = GenerateMultiDH(DH, MQ);

AA = Tlinks(MDH(:,:));
Org = LinkOrigins(AA);
h = DrawLinks(Org);
H = DrawFrames(AA, P,F)

AAA = CalculateRobotMotion(MDH)

AnimateRobot(H,AAA,P,h,0.1, 1)
