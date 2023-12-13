clc
clear all
close all


      P=[0.5 0.5 1 0 -1 -0.5 -0.5
         0 2 2 3 2 2 0 
         0 0 0 0 0 0 0
         1 1 1 1 1 1 1];

      Q=rotz(pi/2)*rotx(pi/2)*P; %plano zy
      h=fill3(Q(1,:), Q(2,:), Q(3,:), 'm');

      grid on
      axis equal
      axis([-8 8 -8 8 -8 8])

      view(120, 20)
    
      xlabel('X')
      ylabel('Y')
      zlabel('Z')

      pInicial=eye(4);
      
      positions=[
                 0 0 5 0 0 0
                 0 0 0 -pi/2 0 0
                 0 0 5 0 0 0
                 0 0 0 0 pi/2 0
                 0 0 5 0 0 0
                 0 0 0 -pi/2 0 0
                 0 0 5 0 0 0
                 0 0 0 0 pi/2 0
                 0 0 5 0 0 0
                 0 0 0 -pi/2 0 0
                 0 0 5 0 0 0
                 0 0 0 0 pi/2 0
                ];
      while 1
          for n=1:size(positions,1)
                pInicial=Animate(h, Q, pInicial, positions(n,:), 50);
          end
      end

