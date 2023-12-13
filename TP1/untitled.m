NN = 150;
        for n = 1:size(P, 1) - 1
            % Primeiro ponto (0,0,0)
            % p1 = P(n, :);
            % % Primeiro ponto (5,5,5)
            % p2 = P(n + 1, :);
            % N(n);
            % % PN é composto por 
            % pn = [linspace(p1(1), p2(1), NN)
            %     linspace(p1(2), p2(2), NN)
            %     linspace(p1(3), p2(3), NN)
            %     linspace(0,pi*2*N(n),NN)
            %     linspace(0,pi*2*N(n),NN)
            %     linspace(0,pi*2*N(n),NN)];
           %  % Inicialize as orientações em cada etapa
           % 
           %  [phi,theta, r] = cart2sph(p2(1) - p1(1), p2(2) - p1(2), p2(3) - p1(3));
           %  %===============Calcular as orientações=================================
           %   angulo2=theta;
           %   angulo1=phi;
           % 
           % orientation = mrotaz_P2(angulo1)*mrotay_P2(-angulo2);
           % 

            for i = 1:size(pn, 2)  % Loop para percorrer as posições em cada objeto
                pk = pn(:, i);

                % =================Aplicar as translações para todos os objetos ======================
                for k = 1:4  % Loop para percorrer os objetos
                    translation = mtrans(pk(1), pk(2), pk(3));

                    % Calcula a translação para o objeto atual (k)
                    Tr(:,:,k) = translation orientation pontos(:,:,k);
                end

                % Atualize a posição de todos os objetos no gráfico
                for k = 1:4
                    set(h(k), 'Vertices', Tr(1:3, :, k)');
                end

                pause(0.01)
            end

        end