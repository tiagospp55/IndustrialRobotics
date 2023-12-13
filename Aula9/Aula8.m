 clear all
 close all
 clc

  L1=3;
  L2=2;


  dh = [0 L1 0 0
         0 L2 0 0 0];

  jTypes = [0 0]

  A=[4, 0]';
  B=[-3, 1]';
    

  n = 100;
  rED = 1
  view(3); hold on; grid on;
  axis([-2 6 -2 6 -2 6])

  Q1=invkinRR(A(1), A(2), A(3), L1, L2, L3);
  Q2=invkinRR(B(1), B(2), B(3), L1, L2, L3);

  dq = (Q2(:,Red))



    subplot(1,2,2)
      hold on 
    grid on
    axis equal
    [H,h,P, ~] = initRobot(QA, N, DH, [0 0], 0.5, 'wbr')
    xlabel('XX')
    ylabel('YY')


%% Exercicio 3


  L1=3;
  L2=2;

  DH=[0 L1 0 0 
      0 L2 0 0];

  A=[4 0]';
  B=[-4 3]';

  subplot(1,2,1)
  grid on; hold on

  subplot(1,2,2)
  hold on; grid on; axis equal

  Qi=invkinRR(A(1),A(2),L1,L2);
  Qf=invkinRR(B(1),B(2),L1,L2);

  N=100;
  redund=2;

  dQ=(Qf(:,redund)-Qi(:,redund))/N;

  Qn=Qi(:,redund);

  [H,h,P, ~]=InitRobot([Qi(:,redund), Qf(:,redund)], 1, DH, [0,0], 0.5);

  dr=(B-A)/N;

  for n=1:N

      Jinv=jacobianRRInv(Qn, L1,L2);
      dQ=Jinv*dr;

      subplot(1,2,1)
      plot(n, dQ(1), 'r+', n, dQ(2), 'b*')

 

      MDH= GenerateMultiDH(DH, Qn, [0,0]);
      AAA=CalculateRobotMotion(MDH);
      AnimateRobot(H, AAA, P, h, 0.03);

      Qn=Qn+dQ;

  end


