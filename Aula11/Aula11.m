clc;clear all; close all

% Parâmetros do cone
TH = 4000
PD = 400
TB = 3400
PH = 1000

num_segmentos = 100;
theta = linspace(0, 2*pi, num_segmentos);

% Coordenadas x e y para a base do cone
x_base = TB/2 * cos(theta);
y_base = TB/2 * sin(theta);
z_base = zeros(size(theta))

cone = patch('Faces', [1:num_segmentos num_segmentos+1],'Vertices', [x_base', y_base',z_base'; 0 0 0; 0 0 TH]);

% Configurações de exibição
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Cone em MATLAB');

% Ajustar a proporção dos eixos

axis ([-5000 5000, -5000 5000, -1000 50])
% Exibir a grade
grid on;

% Adicionar rótulos aos eixos
legend(cone, 'Cone');

% Exibir o cone
view(3);
