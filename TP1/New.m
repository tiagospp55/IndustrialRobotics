% Definir os vértices do paralelepípedo
paralelepipedo_points = [
    -1 -1 -1;   % Vértice 1
     1 -1 -1;   % Vértice 2
     1  1 -1;   % Vértice 3
    -1  1 -1;   % Vértice 4
    -1 -1  1;   % Vértice 5
     1 -1  1;   % Vértice 6
     1  1  1;   % Vértice 7
    -1  1  1;   % Vértice 8
];

% Definir as faces do paralelepípedo
paralelepipedo_faces = [
    1 2 3 4;   % Base inferior
    5 6 7 8;   % Base superior
    1 2 6 5;   % Lado 1
    2 3 7 6;   % Lado 2
    3 4 8 7;   % Lado 3
    4 1 5 8;   % Lado 4
];

% Criar figura
figure;

% Desenhar o paralelepípedo usando a função patch
paralelepipedo = patch('Vertices', paralelepipedo_points, 'Faces', paralelepipedo_faces, 'FaceColor', 'b', 'FaceAlpha', 0.7);

% Configurar propriedades do eixo
axis equal;
grid on;
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');

% Adicionar iluminação para melhor visualização
light;
lighting gouraud;

% Exibir o resultado
disp('Diamante (paralelepípedo com pirâmide truncada) desenhado.');