clc; clear all; close all

points=[
1 -1 0 %point 1
1 1 0 %point 2
-1 1 0 %point 3
-1 -1 0 %point 4
0 0 2 ];

points2=[
2 -2 0 %point 1
2 2 0 %point 2
-2 -1 0 %point 3
-2 2 0 %point 4
0 0 0 ];

% homogeneous version for
% transformations
hpoints=[points';ones(1,size(points,1))];
hpoints2=[points2';ones(1,size(points,1))];
%definition of faces
Faces1 = [
1 2 5 5 %face1
2 3 5 5 %face2
3 4 5 5 %face3
4 1 5 5 %face4
1 2 3 4 %face5
];
%simple color index to
%paint the faces
fColor= [ 1 2 3 4 5 ]';

    h=patch('Vertices', hpoints(1:3,:)', 'Faces', Faces1, 'Facecolor', 'g');
    h2=patch('Vertices', hpoints2(1:3,:)', 'Faces', Faces1, 'Facecolor', 'b');
    
    grid on; axis on; hold on;
    xlabel('x'); ylabel('y'); zlabel('z')
    axis([-1 6 -1 7 -1 6])
    view(110, 15)

    NN=10;

    T(:,:,:,1)=mtrans(0,0,linspace(0, 5, NN));
    T(:,:,:,2)=mtrans(0, linspace(0,6,NN),0);
    


    order=[0 0];
    Tcurr=eye(4,4);
        Tcurr2=eye(4,4);
    
        m = size(T,3);

        % for i = 1:m 
        % % manimate(h, hpoints, Tcurr, T(:,:,:,n), order(n));
        % % manimate(h2, hpoints2, Tcurr2, T(:,:,:,n), order(n));
        %     TT = T(:,:,:,n)*Tcurr;   
        % 
        % end
      for i = 1:size(T,4)  
       for n=1:m

             TT=T(:,:,n,i)*Tcurr;
             TT2=T(:,:,n,i) * Tcurr2;

             Pn=TT*hpoints;
             Pn2 = TT*hpoints2;

             set(h, 'Vertices', Pn(1:3,:)')
             set(h2, 'Vertices', Pn2(1:3,:)')
             pause(0.05)
       end
      end
       
        
    