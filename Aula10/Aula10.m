%% Exercicio 1

close all
clc
clear all

L1=3; L2=2;

A=[2 0]';
B=[-4 2]';

DH=[0 L1 0 0 
  0 L2 0 0];

QA=invkinRR(A(1),A(2),L1,L2);
QB=invkinRR(B(1),B(2),L1,L2);

redund_i=2;
redund_f=1;

qi=QA(:, redund_i);
qf=QB(:, redund_f);

N=100;

Qv0 = [0 0]';
Qvf= Qv0;
t0=0; tf=4;

subplot(1,2,1)
grid on; hold on

subplot(1,2,2)
hold on; grid on; axis equal

[Qm, t]=PolyTrajV(qi, qf, Qv0, Qvf, N, t0 ,tf);

subplot(1,2,1)
plot(t, Qm(1,:), t, Qm(2,:))

subplot(1,2,2)
[H,h,P, AAA]=InitRobot(Qm, 1, DH, [0,0], 0.5);
AnimateRobot(H, AAA, P, h, 0.03,1)

%% Exercicio 1

close all
clc
clear all


close all
clc
clear all

L1=2; L2=3;

A=[0 3]';
B=[1 4]';
C = [4 2]';
D = [2 2]';

t = [0 0.5 1.2 2.0 2.6 4]

DH=[0 L1 0 0 
  0 L2 0 0];

QA=invkinRR(A(1),A(2),L1,L2);
QB=invkinRR(B(1),B(2),L1,L2);

redund_i=2;
redund_f=1;

qi=QA(:, redund_i);
qf=QB(:, redund_f);

N=100;

Qv0 = [0 0]';
Qvf= Qv0;
t0=0; tf=4;

subplot(1,2,1)
grid on; hold on

subplot(1,2,2)
hold on; grid on; axis equal

[Qm, t]=PolyTrajV(qi, qf, Qv0, Qvf, N, t0 ,tf);

subplot(1,2,1)
plot(t, Qm(1,:), t, Qm(2,:))

subplot(1,2,2)
[H,h,P, AAA]=InitRobot(Qm, 1, DH, [0,0], 0.5);
AnimateRobot(H, AAA, P, h, 0.03,1)





