clc; clear all; close all;

%% Exercicio 1
L1 = 3;
L2 = 2;
Q = rad2deg(invkinRR(2,2,L1,L2))

%% Exercicio 2

L1 = 3;
L2 = 2;
p1 = [4;0]
p2 = [-1;1]
axis equal; hold on; grid on;
axis([-5 5 -1 6])

DH=[0 L1 0 0 
    0 L2 0 0];

p1=[4 0]';
p2=[-1 1]';

Q1=invkinRR(p1(1),p1(2),L1,L2);
Q2=invkinRR(p2(1),p2(2),L1,L2);

    % sai em cima e chega em baixo
    % Qi=Q1(:,1);
    % Qf=Q2(:,2);

        % cotovelo em baixo
    redund=1;
    % 
    % Qi=Q1(:,redund);
    % Qf=Q2(:,redund);

    %cotovelo em cima

%     redund=2;
% 
    Qi=Q1(:,redund);
    Qf=Q2(:,redund);

    %sai em baixo e chega em cima
%     Qi=Q1(:,1);
%     Qf=Q2(:,2);


    MQ=linspaceVect(Qi, Qf, 100);
    t=[0 0]; %both rotational
    MDH=GenerateMultiDH(DH, MQ, t);
    AAA=CalculateRobotMotion(MDH);
   AA=Tlinks(DH);
    Org=LinkOrigins(AA);
    [P,F]=seixos3(0.5);
    h=DrawLinks(Org);
    H=DrawFrames(AA, P, F);
    AnimateRobot(H, AAA, P, h, 0.03)
    
 %% Exercicio 3
 clc;
 clear all
 close all
   axis equal; hold on; grid on;
    axis([-5 5 -1 6])
    
    L1=3;
    L2=2;

    DH=[0 L1 0 0 
        0 L2 0 0];

    p1=[4 0]';
    p2=[-1 1]';

    Q1=invkinRR(p1(1),p1(2),L1,L2);
    Q2=invkinRR(p2(1),p2(2),L1,L2);

    QQ=[Q1(:,2) Q2(:,2)];

    [H, h, P, AAA]=InitRobot(QQ, 100, DH, [0,0], 0.5);
    pause
    AnimateRobot(H, AAA, P, h, 0.03)

%% Exercicio 4
























%% Exercicio 5
clc
close all
clear

axis equal;
axis ([ -6 6 -3 6 -6 6]);
hold on; 
grid on;
xlabel('X'); 
ylabel('Y');
zlabel('Z');

L1 = 4;
L2 = 2;

DH = [
    0 L1 0 0
    0 L2 0 0
];

P1 = [4 0];
P2 = [-2 2];

Qi = invkinRR(P1(1), P1(2), L1, L2);
Qf = invkinRR(P2(1), P2(2), L1, L2);

MQ_22 = linspaceVect(Qi(:,2), Qf(:,2), 50);  % Use redundancy 2
MQ_12 = linspaceVect(Qi(:,1), Qf(:,2), 50);  % Start in redundancy 1, end in 2
MQ_21 = linspaceVect(Qi(:,2), Qf(:,1), 50);  % Start in redundancy 2, end in 1

MDH_22 = GenerateMultiDH(DH, MQ_22);
MDH_12 = GenerateMultiDH(DH, MQ_12);
MDH_21 = GenerateMultiDH(DH, MQ_21);

AAA_22 = CalculateRobotMotion(MDH_22);
AAA_12 = CalculateRobotMotion(MDH_12);
AAA_21 = CalculateRobotMotion(MDH_21);

[x,y,z] = RobotEndPath(AAA_22);
plot3(x,y,z,'r-');
[x,y,z] = RobotEndPath(AAA_12);
plot3(x,y,z,'g-');
[x,y,z] = RobotEndPath(AAA_21);
plot3(x,y,z,'b-');

% draw robot on initial position
[P, F] = seixos3(0.4);
Org = LinkOrigins(AAA_22(:,:,:,1));
h = DrawLinks(Org);
H = DrawFrames(AAA_22(:,:,:,1), P, F);

AnimateRobot(H, AAA_22, P, h, 0.05, 1);


