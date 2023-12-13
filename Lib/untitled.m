clear all

addpath ../lib;
[P,F]=seixos3(5);


%Base
    pontosb=[
     50  50 2 %point 1
    -50  50 2 %point 2
     50 -50 2 %point 3
    -50 -50 2 %point 4
     50  50 0 %point 5
    -50  50 0 %point 6
     50 -50 0 %point 7
    -50 -50 0 %point 8
    ];
    % versão homogénea da base
    hpontosb=[pontosb';ones(1,size(pontosb,1))];
    %Definição das faces
    Facesb = [
    1 2 4 3 %face1
    5 6 8 7 %face2
    1 2 6 5 %face3
    1 3 7 5 %face4
    2 6 8 4 %face5
    3 4 8 7 %face6
    ];
    %cor das faces
    Corb= [ 1 2 3 4 5 6]';
   
%Objeto 1
    pontos1=[
    -10   5 5 %point 1
     10   5 5 %point 2
      0  -5 5 %point 3
    -10   5 2 %point 4
     10   5 2 %point 5
      0  -5 2 %point 6
    ];
    % versão homogénea da base
    hpontos1=[pontos1';ones(1,size(pontos1,1))];
    %Definição das faces
    Faces1 = [
    1 2 3 3 %face1
    4 5 6 6 %face2
    1 2 5 4 %face3
    2 3 6 5 %face4
    1 3 6 4 %face5
    ];
    %cor das faces
    Cor1= [ 1 2 3 4 5 ]';
    
%Objeto 2
    pontos2=[
      5 -10 5 %point 1
      5  10 5 %point 2
     -5   0 5 %point 3
      5 -10 2 %point 4
      5  10 2 %point 5
     -5   0 2 %point 6 
    ];
    % versão homogénea da base
    hpontos2=[pontos2';ones(1,size(pontos2,1))];
    %Definição das faces
    Faces2 = [
    1 2 3 3 %face1
    4 5 6 6 %face2
    1 2 5 4 %face3
    2 3 6 5 %face4
    1 3 6 4 %face5
    ];
    %cor das faces
    Cor2= [ 1 2 3 4 5 ]';

%Objeto 3
    pontos3=[
       0 -2.5   5 %point 1
      10 -2.5   5 %point 2
       5  2.5   5 %point 3
      -5  2.5   5 %point 4
       0 -2.5   2 %point 5
      10 -2.5   2 %point 6
       5  2.5   2 %point 7
      -5  2.5   2 %point 8
    ]; 
    % versão homogénea da base
    hpontos3=[pontos3';ones(1,size(pontos3,1))];
    %Definição das faces
    Faces3 = [
    1 2 3 4 %face1
    5 6 7 8 %face2
    1 2 6 5 %face3
    2 3 7 6 %face4
    3 4 8 7 %face5
    1 4 8 5 %face6
    ];
    %cor das faces
    Cor3= [ 1 2 3 4 5 6 ]';
    
%Objeto 4
    pontos4=[
  5  -2.5   5 %point 1
  0   2.5   5 %point 2
 -5  -2.5   5 %point 3
  5  -2.5   2 %point 4
  0   2.5   2 %point 5
 -5  -2.5   2 %point 6
    ];
    % versão homogénea da base
    hpontos4=[pontos4';ones(1,size(pontos4,1))];
    %Definição das faces
    Faces4 = [
    1 2 3 3 %face1
    4 5 6 6 %face2
    1 2 5 4 %face3
    2 3 6 5 %face4
    1 3 6 4 %face5
    ];
    %cor das faces
    Cor4= [ 1 2 3 4 5 ]';

%Objeto 5
    pontos5=[
    -5  -5  5 %point 1
     5  -5  5 %point 2
    -5   5  5 %point 3
    -5  -5  2 %point 4
     5  -5  2 %point 5
    -5   5  2 %point 6
    ];
    % versão homogénea da base
    hpontos5=[pontos5';ones(1,size(pontos5,1))];
    %Definição das faces
    Faces5 = [
    1 2 3 3 %face1
    4 5 6 6 %face2
    1 2 5 4 %face3
    2 3 6 5 %face4
    1 3 6 4 %face5
    ];
    %cor das faces
    Cor5= [ 1 2 3 4 5 ]';

%Objeto 6
    pontos6=[
      -5    0   5 %point 1
       0   -5   5 %point 2
       5    0   5 %point 3
       0    5   5 %point 4
      -5    0   2 %point 5
       0   -5   2 %point 6
       5    0   2 %point 7
       0    5   2 %point 8
    ]; 
    % versão homogénea da base
    hpontos6=[pontos6';ones(1,size(pontos6,1))];
    %Definição das faces
    Faces6 = [
    1 2 3 4 %face1
    5 6 7 8 %face2
    1 2 6 5 %face3
    2 3 7 6 %face4
    3 4 8 7 %face5
    1 4 8 5 %face6
    ];
    %cor das faces
    Cor6= [ 1 2 3 4 5 6 ]';

%Objeto 7
    pontos7=[
  -2.5   -5  5 %point 1
   2.5    0  5 %point 2
  -2.5    5  5 %point 3
  -2.5   -5  2 %point 4
   2.5    0  2 %point 5
  -2.5    5  2 %point 6
    ];
    % versão homogénea da base
    hpontos7=[pontos7';ones(1,size(pontos7,1))];
    %Definição das faces
    Faces7 = [
    1 2 3 3 %face1
    4 5 6 6 %face2
    1 2 5 4 %face3
    2 3 6 5 %face4
    1 3 6 4 %face5
    ];
    %cor das faces
    Cor7= [ 1 2 3 4 5 ]';
    
    
    %P=roty(pi/2)*P;
    %P=trans(5.1,0,0)*P;
    
    %h=patch('Vertices',P(1:3,:)', 'Faces', F, 'Facecolor', 'g');
    hb=patch('Vertices', pontosb, 'Faces', Facesb,'FaceVertexCData', Corb, 'FaceColor', [0.7 0.7 0.7]);
    h1=patch('Vertices', pontos1, 'Faces', Faces1,'FaceVertexCData', Cor1, 'FaceColor', 'g');
    h2=patch('Vertices', pontos2, 'Faces', Faces2,'FaceVertexCData', Cor2, 'FaceColor', [0.9290 0.6940 0.1250]);
    h3=patch('Vertices', pontos3, 'Faces', Faces3,'FaceVertexCData', Cor3, 'FaceColor', [0.4660 0.6740 0.1880]);
    h4=patch('Vertices', pontos4, 'Faces', Faces4,'FaceVertexCData', Cor4, 'FaceColor', 'y');
    h5=patch('Vertices', pontos5, 'Faces', Faces5,'FaceVertexCData', Cor5, 'FaceColor', 'r');
    h6=patch('Vertices', pontos6, 'Faces', Faces6,'FaceVertexCData', Cor6, 'FaceColor', 'm');
    h7=patch('Vertices', pontos7, 'Faces', Faces7,'FaceVertexCData', Cor7, 'FaceColor', 'c');

    grid on; axis equal; hold on
    xlabel('X'); ylabel('Y'); zlabel('Z');
    axis([-60 60 -60 60 -60 60]);
    view(120,20);
    %% Posição inicial
    NN=1

    Ti1(:,:,:,1)=mtrans(linspace(0,25,NN),0,0);
    Tcurr1=eye(4);
    ord=[0]
    for n=1:size(Ti1,4)
    Tcurr1=manimate(h1,hpontos1,Tcurr1, Ti1(:,:,:,n), ord(n));
    end

    Ti2(:,:,:,1)=mtrans(linspace(0,25,NN),0,0);
    Ti2(:,:,:,2)=mrotz(linspace(0,-2*pi/7, NN));
    Tcurr2=eye(4);
    ord=[0 0]
    for n=1:size(Ti2,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, Ti2(:,:,:,n), ord(n));
    end

   
    Ti3(:,:,:,1)=mtrans(linspace(0,25,NN),0,0);
    Ti3(:,:,:,2)=mrotz(linspace(0,-4*pi/7, NN));
    Tcurr3=eye(4);
    ord=[0 0]
    for n=1:size(Ti3,4)
    Tcurr3=manimate(h3,hpontos3,Tcurr3, Ti3(:,:,:,n), ord(n));
    end

    
    Ti4(:,:,:,1)=mtrans(linspace(0,25,NN),0,0);
    Ti4(:,:,:,2)=mrotz(linspace(0,-6*pi/7, NN));
    Tcurr4=eye(4);
    ord=[0 0]
    for n=1:size(Ti4,4)
    Tcurr4=manimate(h4,hpontos4,Tcurr4, Ti4(:,:,:,n), ord(n));
    end

    Ti5(:,:,:,1)=mtrans(linspace(0,25,NN),0,0);
    Ti5(:,:,:,2)=mrotz(linspace(0,-8*pi/7, NN));
    Tcurr5=eye(4);
    ord=[0 0]
    for n=1:size(Ti5,4)
    Tcurr5=manimate(h5,hpontos5,Tcurr5, Ti5(:,:,:,n), ord(n));
    end

   
    Ti6(:,:,:,1)=mtrans(linspace(0,25,NN),0,0);
    Ti6(:,:,:,2)=mrotz(linspace(0,-10*pi/7, NN));
    Tcurr6=eye(4);
    ord=[0 0]
    for n=1:size(Ti6,4)
    Tcurr6=manimate(h6,hpontos6,Tcurr6, Ti6(:,:,:,n), ord(n));
    end


    Ti7(:,:,:,1)=mtrans(linspace(0,25,NN),0,0);
    Ti7(:,:,:,2)=mrotz(linspace(0,-12*pi/7, NN));
    Tcurr7=eye(4);
    ord=[0 0 0]
    for n=1:size(Ti7,4)
    Tcurr7=manimate(h7,hpontos7,Tcurr7, Ti7(:,:,:,n), ord(n));
    end

    pause(1);
%% Rotação plano


    Trb(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    Tcurrb=eye(4);
    ord=0;
    for n=1:size(Trb,4)
    Tcurrb=manimate(hb,hpontosb,Tcurrb, Trb(:,:,:,n), ord(n));
    end

    Tr1(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    ord=0;
    for n=1:size(Tr1,4)
    Tcurr1=manimate(h1,hpontos1,Tcurr1, Tr1(:,:,:,n), ord(n));
    end

    Tr2(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    ord=0;
    for n=1:size(Tr2,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, Tr2(:,:,:,n), ord(n));
    end

    Tr3(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    ord=0;
    for n=1:size(Tr3,4)
    Tcurr3=manimate(h3,hpontos3,Tcurr3, Tr3(:,:,:,n), ord(n));
    end

    Tr4(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    ord=0;
    for n=1:size(Tr4,4)
    Tcurr4=manimate(h4,hpontos4,Tcurr4, Tr4(:,:,:,n), ord(n));
    end

    Tr5(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    ord=0;
    for n=1:size(Tr5,4)
    Tcurr5=manimate(h5,hpontos5,Tcurr5, Tr5(:,:,:,n), ord(n));
    end

    Tr6(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    ord=0;
    for n=1:size(Tr6,4)
    Tcurr6=manimate(h6,hpontos6,Tcurr6, Tr6(:,:,:,n), ord(n));
    end

    Tr7(:,:,:,1)=mroty(linspace(0,pi/2,NN));
    ord=0;
    for n=1:size(Tr7,4)
    Tcurr7=manimate(h7,hpontos7,Tcurr7, Tr7(:,:,:,n), ord(n));
    end






pause (1)
   


%% Animação 1
  %Objeto 1
    NN=10;
    T11(:,:,:,1)=mrotz(linspace(0,-pi/2,NN));
    T11(:,:,:,2)=mtrans(0,0,linspace(0,20,NN));
    ord=[1 0];
    for n=1:size(T11,4)
    Tcurr1=manimate(h1,hpontos1,Tcurr1, T11(:,:,:,n), ord(n));
    end

 %Objeto 2
 
    T21(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T21(:,:,:,2)=mrotx(linspace(0,(-pi/2)+(2*pi/7),NN));
    T21(:,:,:,3)=mtrans(0,linspace(0,20,NN),0);
    T21(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
    ord=[0 0 0 0];
    for n=1:size(T21,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, T21(:,:,:,n), ord(n));
    end

 %Objeto 3
   
    T31(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T31(:,:,:,2)=mrotx(linspace(0,-pi + 4*pi/7,NN));
    T31(:,:,:,3)=mrotz(linspace(0,-pi/2,NN));
    T31(:,:,:,4)=mtrans(0,linspace(0,-5,NN),linspace(0,-17.5,NN));
    T31(:,:,:,5)=mtrans(linspace(0,-4,NN),0,0);

    ord=[0 0 1 0 0];
    for n=1:size(T31,4)
    Tcurr3=manimate(h3,hpontos3,Tcurr3, T31(:,:,:,n), ord(n));
    end


  %Objeto 4

    T41(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T41(:,:,:,2)=mrotx(linspace(0,-pi + 6*pi/7,NN));
    T41(:,:,:,3)=mrotz(linspace(0,pi/2,NN));
    T41(:,:,:,4)=mtrans(0,0,linspace(0,-22.5,NN));
    T41(:,:,:,5)=mtrans(linspace(0,-4,NN),0,0);

    ord=[0 0 1 0 0];
    for n=1:size(T41,4)
    Tcurr4=manimate(h4,hpontos4,Tcurr4,T41(:,:,:,n), ord(n));
    end

 

  %Objeto 5

    T51(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T51(:,:,:,2)=mrotx(linspace(0,-3*pi/2 + 8*pi/7,NN));
    T51(:,:,:,3)=mrotz(linspace(0,pi,NN));
    T51(:,:,:,4)=mtrans(0,linspace(0,-20,NN),linspace(0,5,NN));
    T51(:,:,:,5)=mtrans(linspace(0,-4,NN),0,0);

    
    ord=[0 0 1 0 0];
    for n=1:size(T51,4)
    Tcurr5=manimate(h5,hpontos5,Tcurr5, T51(:,:,:,n), ord(n));
    end

  %Objeto 6
   
    T61(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T61(:,:,:,2)=mrotx(linspace(0,(-(3/2)*pi+(10*pi/7)),NN));
    T61(:,:,:,3)=mtrans(0,linspace(0,-20,NN),0);
    T61(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);

    ord=[0 0 0 0];
    for n=1:size(T61,4)
    Tcurr6=manimate(h6,hpontos6,Tcurr6, T61(:,:,:,n), ord(n));
    end

  % Objeto 7
    
    T71(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T71(:,:,:,2)=mrotx(linspace(0,(-2*pi+(12*pi/7)),NN));
    T71(:,:,:,3)=mrotz(linspace(0,-pi/2,NN));
    T71(:,:,:,4)=mtrans(0,linspace(0,7.5,NN),linspace(0,20,NN));
    T71(:,:,:,5)=mtrans(linspace(0,-4,NN),0,0);
   
 
    ord=[0 0 1 0 0];
    for n=1:size(T71,4)
    Tcurr7=manimate(h7,hpontos7,Tcurr7, T71(:,:,:,n), ord(n));
    end

   

  

    %% Mudança de cor

    h1.FaceColor='b';
    h2.FaceColor='b';
    h3.FaceColor='b';
    h4.FaceColor='b';
    h5.FaceColor='b';
    h6.FaceColor='b';
    h7.FaceColor='b';

    pause (1)

    h1.FaceColor='g';
    h2.FaceColor=[0.9290 0.6940 0.1250];
    h3.FaceColor=[0.4660 0.6740 0.1880];
    h4.FaceColor='y';
    h5.FaceColor='r';
    h6.FaceColor='m';
    h7.FaceColor='c';
%% Animação 2

%Objeto 2
 
    T22(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T22(:,:,:,2)=mrotz(linspace(0,pi,NN));
    T22(:,:,:,3)=mtrans(0,linspace(0,-10,NN),linspace(0,-20,NN));
    T22(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
    ord=[0 1 0 0];
    for n=1:size(T22,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, T22(:,:,:,n), ord(n));
    end

 % Objeto 3

    T32(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T32(:,:,:,2)=mrotz(linspace(0,pi/2,NN));
    T32(:,:,:,3)=mtrans(0,linspace(0,-12.5,NN),linspace(0,-22.5,NN));
    T32(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
    ord=[0 1 0 0];
    for n=1:size(T32,4)
    Tcurr3=manimate(h3,hpontos3,Tcurr3, T32(:,:,:,n), ord(n));
    end

 % Objeto 4

    T42(:,:,:,1)=mrotx(linspace(0,pi/2,NN));
    T42(:,:,:,2)=mtrans(0,linspace(0,-10,NN),linspace(0,-10,NN));
    ord=[0 0];
    for n=1:size(T42,4)
    Tcurr4=manimate(h4,hpontos4,Tcurr4, T42(:,:,:,n), ord(n));
    end

 % Objeto 6

    T62(:,:,:,1)=mtrans(0,linspace(0,-5,NN),linspace(0,5,NN));
    T62(:,:,:,2)=mtrans(0,linspace(0,-10,NN),linspace(0,-10,NN));
    ord=[0 0];
    for n=1:size(T62,4)
    Tcurr6=manimate(h6,hpontos6,Tcurr6, T62(:,:,:,n), ord(n));
    end
   
  % Objeto 7
  
    T72(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T72(:,:,:,2)=mrotz(linspace(0,pi/2,NN));
    T72(:,:,:,3)=mtrans(0,linspace(0,-12.5,NN),linspace(0,2.5,NN));
    T72(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
    ord=[0 1 0 0];
    for n=1:size(T72,4)
    Tcurr7=manimate(h7,hpontos7,Tcurr7, T72(:,:,:,n), ord(n));
    end

  % Objeto 5
  
    T52(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T52(:,:,:,2)=mrotz(linspace(0,pi/2,NN));
    T52(:,:,:,3)=mtrans(0,linspace(0,-20,NN),linspace(0,-10,NN));
    T52(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
    ord=[0 1 0 0];
    for n=1:size(T52,4)
    Tcurr5=manimate(h5,hpontos5,Tcurr5, T52(:,:,:,n), ord(n));
    end

    %% Mudança de cor

    h1.FaceColor='g';
    h2.FaceColor='g';
    h3.FaceColor='g';
    h4.FaceColor='g';
    h5.FaceColor='g';
    h6.FaceColor='g';
    h7.FaceColor='g';

    pause (1)

    h1.FaceColor='g';
    h2.FaceColor=[0.9290 0.6940 0.1250];
    h3.FaceColor=[0.4660 0.6740 0.1880];
    h4.FaceColor='y';
    h5.FaceColor='r';
    h6.FaceColor='m';
    h7.FaceColor='c';

    %% Animação 3

% Objeto 2

    T23(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T23(:,:,:,2)=mrotz(linspace(0,pi/2,NN));
    T23(:,:,:,3)=mtrans(0,linspace(0,15,NN),linspace(0,25,NN));
    T23(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
    

    ord=[0 1 0 0];
    for n=1:size(T23,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, T23(:,:,:,n), ord(n));
    end

% Objeto 7

    T73(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T73(:,:,:,2)=mrotz(linspace(0,pi/2,NN));
    T73(:,:,:,3)=mtrans(0,linspace(0,2.5,NN),linspace(0,2.5,NN));
    T73(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
  

  
    ord=[0 1 0 0];
    for n=1:size(T73,4)
    Tcurr7=manimate(h7,hpontos7,Tcurr7, T73(:,:,:,n), ord(n));
    end

% Objeto 6

    T63(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T63(:,:,:,2)=mtrans(0,0,linspace(0,10,NN));
    T63(:,:,:,3)=mtrans(linspace(0,-4,NN),0,0);
  

  
    ord=[0 0 0 ];
    for n=1:size(T63,4)
    Tcurr6=manimate(h6,hpontos6,Tcurr6, T63(:,:,:,n), ord(n));
    end

% Objeto 5

    T53(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T53(:,:,:,2)=mrotz(linspace(0,pi,NN));
    T53(:,:,:,3)=mtrans(0,linspace(0,5,NN),linspace(0,5,NN));
    T53(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
   
  

  
    ord=[0 1 0 0];
    for n=1:size(T53,4)
    Tcurr5=manimate(h5,hpontos5,Tcurr5, T53(:,:,:,n), ord(n));
    end

 % Objeto 4

    T43(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T43(:,:,:,2)=mrotz(linspace(0,-pi/2,NN));
    T43(:,:,:,3)=mtrans(0,linspace(0,-2.5,NN),linspace(0,17.5,NN));
    T43(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
   
  
    ord=[0 1 0 0];
    for n=1:size(T43,4)
    Tcurr4=manimate(h4,hpontos4,Tcurr4, T43(:,:,:,n), ord(n));
    end
   
 % Objeto 3

    T33(:,:,:,1)=mtrans(linspace(0,10,NN),0,0);
    T33(:,:,:,2)=mrotz(linspace(0,-pi/2,NN));
    T33(:,:,:,3)=mrotx(linspace(0,-pi,NN));
    T33(:,:,:,4)=mtrans(0,linspace(0,2.5,NN),linspace(0,7.5,NN));
    T33(:,:,:,5)=mtrans(linspace(0,-3,NN),0,0);
   
  
    ord=[0 1 1 0 0];
    for n=1:size(T33,4)
    Tcurr3=manimate(h3,hpontos3,Tcurr3, T33(:,:,:,n), ord(n));
    end

%% Mudança de cor

    h1.FaceColor='r';
    h2.FaceColor='r';
    h3.FaceColor='r';
    h4.FaceColor='r';
    h5.FaceColor='r';
    h6.FaceColor='r';
    h7.FaceColor='r';

    pause (1)

    h1.FaceColor='g';
    h2.FaceColor=[0.9290 0.6940 0.1250];
    h3.FaceColor=[0.4660 0.6740 0.1880];
    h4.FaceColor='y';
    h5.FaceColor='r';
    h6.FaceColor='m';
    h7.FaceColor='c';

    %% Voltar à posição inicial

    %Objeto 1
    T14(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T14(:,:,:,2)=mtrans(0,0,linspace(0,5,NN));
    T14(:,:,:,3)=mrotz(linspace(0,pi/2,NN));
    T14(:,:,:,4)=mtrans(0,0,linspace(0,-25,NN));
    T14(:,:,:,5)=mtrans(linspace(0,-4,NN),0,0);

    ord=[0 0 1 0 0];
    for n=1:size(T14,4)
    Tcurr1=manimate(h1,hpontos1,Tcurr1, T14(:,:,:,n), ord(n));
    end

 %Objeto 2
    T24(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T24(:,:,:,2)=mtrans(0,0,linspace(0,-5,NN));
    T24(:,:,:,3)=mrotz(linspace(0,-pi/2,NN));
    T24(:,:,:,4)=mtrans(0,0,linspace(0,-25,NN));
    T24(:,:,:,5)=mrotx(linspace(0,-2*pi/7,NN));
   
    ord=[0 0 1 0 0];
    for n=1:size(T24,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, T24(:,:,:,n), ord(n));
    end

 %Objeto 3
    T34(:,:,:,1)=mtrans(linspace(0,8,NN),0,0);
    T34(:,:,:,2)=mtrans(0,0,linspace(0,-5,NN));
    T34(:,:,:,3)=mrotz(linspace(0,pi/2,NN));
    T34(:,:,:,4)=mrotx(linspace(0,-pi,NN));
    T34(:,:,:,5)=mtrans(0,linspace(0,15,NN),linspace(0,-5,NN));
    T34(:,:,:,6)=mtrans(0,0,linspace(0,-7.5,NN));
    T34(:,:,:,7)=mrotx(linspace(0,-4*pi/7,NN));
    T34(:,:,:,8)=mtrans(linspace(0,-15,NN),0,0);
   

    ord=[0 0 1 1 0 0 0 0];
    for n=1:size(T34,4)
    Tcurr3=manimate(h3,hpontos3,Tcurr3, T34(:,:,:,n), ord(n));
    end

  %Objeto 2
    T242(:,:,:,1)=mtrans(linspace(0,-4,NN),0,0);
    T242(:,:,:,2)=mrotz(linspace(0,-pi/2,NN));
  
    ord=[0 1];
    for n=1:size(T242,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, T242(:,:,:,n), ord(n));
    end

 %Objeto 4
    T44(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T44(:,:,:,2)=mtrans(0,linspace(0,15,NN),linspace(0,-32.5,NN));
    T44(:,:,:,3)=mrotx(linspace(0,-6*pi/7,NN));
    T44(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
    T44(:,:,:,5)=mrotz(linspace(0,pi/2,NN));
   
    ord=[0 0 0 0 1];
    for n=1:size(T44,4)
    Tcurr4=manimate(h4,hpontos4,Tcurr4, T44(:,:,:,n), ord(n));
    end

 %Objeto 5
    T54(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T54(:,:,:,2)=mrotz(linspace(0,pi,NN));
    T54(:,:,:,3)=mtrans(0,linspace(0,10,NN),linspace(0,-25,NN));
    T54(:,:,:,4)=mrotx(linspace(0,-8*pi/7,NN));
    T54(:,:,:,5)=mtrans(linspace(0,-4,NN),0,0);
   
    ord=[0 1 0 0 0];
    for n=1:size(T54,4)
    Tcurr5=manimate(h5,hpontos5,Tcurr5, T54(:,:,:,n), ord(n));
    end

  %Objeto 6
    T64(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T64(:,:,:,2)=mtrans(0,linspace(0,10,NN),linspace(0,-30,NN));
    T64(:,:,:,3)=mrotx(linspace(0,-10*pi/7,NN));
    T64(:,:,:,4)=mtrans(linspace(0,-4,NN),0,0);
   
    ord=[0 0 0 0];
    for n=1:size(T64,4)
    Tcurr6=manimate(h6,hpontos6,Tcurr6, T64(:,:,:,n), ord(n));
    end

  %Objeto 7
    T74(:,:,:,1)=mtrans(linspace(0,4,NN),0,0);
    T74(:,:,:,2)=mtrans(0,linspace(0,2.5,NN),linspace(0,-25,NN));
    T74(:,:,:,3)=mrotz(linspace(0,-pi/2,NN));
    T74(:,:,:,4)=mrotx(linspace(0,-12*pi/7,NN));
    T74(:,:,:,5)=mtrans(linspace(0,-4,NN),0,0);
   
    ord=[0 0 1 0 0];
    for n=1:size(T74,4)
    Tcurr7=manimate(h7,hpontos7,Tcurr7, T74(:,:,:,n), ord(n));
    end

pause(1)
 
%% Voltar ao plano inicial

NN=1
    Tfb(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tfb,4)
    Tcurrb=manimate(hb,hpontosb,Tcurrb, Tfb(:,:,:,n), ord(n));
    end

    Tf1(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tf1,4)
    Tcurr1=manimate(h1,hpontos1,Tcurr1, Tf1(:,:,:,n), ord(n));
    end

    Tf2(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tf2,4)
    Tcurr2=manimate(h2,hpontos2,Tcurr2, Tf2(:,:,:,n), ord(n));
    end

    Tf3(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tf3,4)
    Tcurr3=manimate(h3,hpontos3,Tcurr3, Tf3(:,:,:,n), ord(n));
    end

    Tf4(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tf4,4)
    Tcurr4=manimate(h4,hpontos4,Tcurr4, Tf4(:,:,:,n), ord(n));
    end

    Tf5(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tf5,4)
    Tcurr5=manimate(h5,hpontos5,Tcurr5, Tf5(:,:,:,n), ord(n));
    end

    Tf6(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tf6,4)
    Tcurr6=manimate(h6,hpontos6,Tcurr6, Tf6(:,:,:,n), ord(n));
    end

    Tf7(:,:,:,1)=mroty(linspace(0,-pi/2,NN));
    ord=0;
    for n=1:size(Tf7,4)
    Tcurr7=manimate(h7,hpontos7,Tcurr7, Tf7(:,:,:,n), ord(n));
    end



    


