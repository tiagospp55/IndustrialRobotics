clc
clear
close all

P=[0.5 0.5 1 0 -1 -0.5 -0.5
         0 2 2 3 2 2 0 
         0 0 0 0 0 0 0
         1 1 1 1 1 1 1];
    
      h1=fill3(P(1,:), P(2,:), P(3,:), 'm'); %plno XY
    
      grid on
      axis equal
      axis([-5 5 -5 5 -5 5])
      hold on
      view(135,30)
      xlabel('X')
      ylabel('Y')
      zlabel('Z')
    
      Q=rotz(pi/2)*rotx(pi/2)*P; %plano zy
      h2=fill3(Q(1,:), Q(2,:), Q(3,:), 'y');

      R=rotx(pi/2)*rotz(-pi/2)*P;
      h3=fill3(R(1,:), R(2,:), R(3,:), 'r');

      N=500; %plano xz
      a=linspace(0,20*pi, N);

      for n=1:N
            T1=rotx(a(n));
            P1=T1*P;
            set(h1, 'XData', P1(1,:), 'YData', P1(2,:), 'ZData', P1(3,:))
        
            T2=roty(a(n));
            P2=T2*Q;
            set(h2, 'XData', P2(1,:), 'YData', P2(2,:), 'ZData', P2(3,:))

            T3=rotz(a(n));
            P3=T3*R;
            set(h3, 'XData', P3(1,:), 'YData', P3(2,:), 'ZData', P3(3,:))

            pause(0.05)
      end