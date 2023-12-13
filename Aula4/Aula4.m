addpath 'C:\Users\tiago\OneDrive\Ambiente de Trabalho\RI\Lib'
clc;
clear all;
close all;

% Tlink cria a matriz A
% Tlinks aceita a matriz DH e retorna a hipermatriz AA
% LinkOrigins devolve uma matriz com as origens dos diversos sistemas de
% coordenadas de um manipulador 
% DrawLinks desenha um fr+afico que represena os elos do robô
% DrawFrames desenha gráficos que representam outros objetos associados ao
% elos


%% Exercicio 2b



       %th   l    d al 
DH = [-pi/4  1    0 0;
       pi/2  1.5  0 0;
       -pi/3 0.5 0 0 ];

AA = Tlinks(DH);

Org = LinkOrigins(AA);

%% Exercicio 3

figure(1)
h = DrawLinks(Org)

[P,F]=seixos3(0.5);

H = DrawFrames(AA,P,F)


%% Exercicio 4

L1 = 3
L2 = 2
L3 = 2

% RR Planar
DH = [0 L1 0 0;
      0 L2 0 0];
subplot(2,2,1)
AA = Tlinks(DH);
Org = LinkOrigins(AA);
h = DrawLinks(Org)
H = DrawFrames(AA,P,F)

% RRR Planar
DH = [0 L1 0 0 
      0 L2 0 0
      0 L3 0 0];
subplot(2,2,2)
AA = Tlinks(DH);
Org = LinkOrigins(AA);
h = DrawLinks(Org)
H = DrawFrames(AA,P,F)

% RR a 3D
DH=[0 0 L1 pi/2
    0 L2 0 0];

subplot(2,2,3)
AA = Tlinks(DH);
Org = LinkOrigins(AA);
h = DrawLinks(Org)
H = DrawFrames(AA,P,F)


% RRR antropomórfico
DH=[0 0 L1 pi/2
    0 L2 0 0
    0 L3 0 0];
% subplot(2,2,4)
AA = Tlinks(DH);
Org = LinkOrigins(AA);
h = DrawLinks(Org)
H = DrawFrames(AA,P,F)



%% Exercicio 5

clc;clear all; close all;

close all
clear

DH = [
     0     0  3  0
     pi/4  3  0  0
    -pi/4  2  0  0
];

AA = Tlinks(DH);
Org = LinkOrigins(AA);

[P, F] = seixos3(0.5);

h = DrawLinks(Org);
H = DrawFrames(AA, P, F);


