function [H, h, P, AAA] = InitRobot(QQ, NN, DH, jTypes, sScale)
%     H - Handles gr´aficos dos sistemas de eixos
%     h - Handle gr´afico dos elos do robˆo
%     P - Objeto do seixos3() na escala usada
%     AAA - Superhipermatriz com as transforma¸c˜oes das posi¸c˜oes do robˆo
%     QQ - matriz de colunas das posi¸c˜oes de junta (pelo menos duas)
%     NN - n´umero de pontos de cada segmento do movimento
%     DH - Matriz-base dos parˆametros cinem´aticos
%     jTypes - vetor com o tipo de juntas (0=rot, 1=prism; opcional)
%     sScale - Fator de escala dos seixos3() (opcional: 1 por defeito)
    if nargin < 4
        jTypes = zeros(1, size(DH, 1));
    end
    if nargin < 5
        sScale = 1;
    end
    
    [P, F] = seixos3(sScale);
    
    MQ = linspaceVect(QQ(:,1), QQ(:,2), NN);
    MDH = GenerateMultiDH(DH,MQ,jTypes);
    AAA = CalculateRobotMotion(MDH);
    
    Org = LinkOrigins(AAA(:,:,:,1));
    h = DrawLinks(Org);
    H = DrawFrames(AAA(:,:,:,1), P, F);
    
    for i = 2:(size(QQ, 2)-1)
        MQ = LinspaceVect(QQ(:,i), QQ(:,i+1), NN);
        MDH = GenerateMultiDH(DH,MQ,jTypes);
        AAA = cat(4, AAA, CalculateRobotMotion(MDH));

    end
end