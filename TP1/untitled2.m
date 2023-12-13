 dados_traj = csvread('traj0.csv');
            % Percorra as linhas em dados_traj
            for j = 1:size(dados_traj,1)
                x(j) = dados_traj(j, 1);
                y(j) = dados_traj(j, 2);
                z(j) = dados_traj(j, 3);
                h(j) = dados_traj(j, 4);
                beta(j) = dados_traj(j,5);
                N(j) = dados_traj(j, 6);
            end
        
        
            % Criar pontos de lingação das linhas
            P=zeros(size(dados_traj,1),6);
            for s=1:size(dados_traj,1)
                P(s+1,:)=[P(s,1)+x(s) P(s,2)+y(s) P(s,3)+z(s) P(s,4)+h(s) P(s,5)+beta(s) P(s,6)+N(s)];
            end
        
            line(P(:,1),P(:,2), P(:,3),'Color', 'b', 'LineStyle', '--');
        
             points=[2 1 1
                2 -1 1
                2 -1 -1
                2 1 -1
                0 0 0];
            hpoints(:,:,1)=[points'; ones(1,size(points,1))];
            points1 = [
             1 2  1
             -1  2  1
            -1  2  -1
            1 2  -1
             0  0  0];
             hpoints(:,:,2) = [points1'; ones(1,size(points1,1))];
             points2 = [
             1 -2  1
             -1  -2  1
            -1  -2  -1
            1 -2  -1
             0  0  0];
             hpoints(:,:,3) = [points2'; ones(1,size(points2,1))];
             points3=[-2 1 1
                -2 -1 1
                -2 -1 -1
                -2 1 -1
                0 0 0];
            hpoints(:,:,4) =[points3'; ones(1,size(points3,1))];
            % Definição das faces
            faces=[1 2 5 5
                2 3 5 5
                3 4 5 5
                4 1 5 5
                1 2 3 4];
            
        
           axis ([-25 25 -25 25 -25 25])
            axis square
            grid on
            hold on
            view(135,15);
            xlabel('x')
            ylabel('y')
            zlabel('z')
         x = [0 0];
         y=[0 0];
         z = [12 -12];
        % 
         line(x,y,z,'Color','red','LineStyle','--')% Criar uma célula para armazenar as figuras patch
        
       
         h=[];
       
        for i = 1:4
            rotation=mrotay_P2(pi/2);
            pontos(:,:,i)=rotation*hpoints(:,:,i);
            h(i) = patch('Vertices', pontos(1:3, :, i)', 'Faces', faces, 'FaceVertexCData', [i i i i i]', 'FaceColor', 'flat');
                hold on
        end

        NN = 30;
        for n = 1:size(P, 1) - 1
            p1 = P(n, :);
            p2 = P(n + 1, :);
            N(n);
            
           pn = [linspace(p1(1), p2(1), NN)
            linspace(p1(2), p2(2), NN)
            linspace(p1(3), p2(3), NN)
            linspace(0,2*pi*N(n),NN)
            linespace(0,2*pi,NN)];

          % [r, p, al, X, Y] = arc3(rand(1, 3), rand(1, 3), rand(1, 3));
            
            % Inicialize as orientações em cada etapa

            [phi,theta, r] = cart2sph(p2(1) - p1(1), p2(2) - p1(2), p2(3) - p1(3));
            
            %===============Calcular as orientações=================================
             angulo2=theta;
             angulo1=phi;
         
           orientation = mrotaz_P2(angulo1)*mrotay_P2(-angulo2); 
         
            for i = 1:size(pn,2)  % Loop para percorrer as posições em cada objeto
                pk = pn(:, i);

                % R = 6; 
                % % t= linspace(0, 2*pi, 100);
                %  pk(1) = R*cos(pk);
                %  pk(2) = R*sin(pk);
                %  th_1 = deg2rad(0);
                %  th_2 = deg2rad(90);
                %  T1_1 = mtrans(R*cos(th_1), R*sin(th_1), 0);
                %  T1_2 = mtrans(R*cos(th_2), R*sin(th_2), 0);

                % =================Aplicar as translações para todos os objetos ======================
                for k = 1:4  % Loop para percorrer os objeto
                    translation = mtrans(pk(1), pk(2), pk(3));
                    % translation = mtrans(pk(1), pk(2), pk(3)+0.5*k);
                   
                      rot_twist=mrotax_P2(pn(1,i));

                    % Calcula a translação para o objeto atual (k)
                    Tr(:,:,k) = translation *orientation*rot_twist*pontos(:,:,k);
                end

                % Atualize a posição de todos os objetos no gráfico
                for k = 1:4
                    set(h(k), 'Vertices', Tr(1:3, :, k)');
                end

                pause(0.1)
            end

        end