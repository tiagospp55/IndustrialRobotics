function [QQ, t] = MultiPolyTrajV(Q, N, tt)
%MULTIPOLYTRAJV Retorna a trajetória múltipla entre duas posturas com
%velocidades iniciais e finais nulas e passando pelos pontos intermédios
%(via points)
%   QQ - Matriz que em cada coluna tem os valores das juntas nos instantes
%   correspondentes, inclluindo os via points
% t - vetor com os instantes de tempo correspondentes a todos os instantes
% de amostragem da trajetória do inicio ao fim 

    V = zeros(size(Q));
    for i = 1:size(QQ,2) - 1
         Qi=Q(:,i);
        Qf=Q(:,i+1);
    
        Vi=V(:,i);
        Vf=V(:,i+1);
    
        t0=tt(i);
        tf=tt(i+1);
    
        [q, ttt]=PolyTrajV(Qi, Qf, Vi, Vf, N, t0, tf);
    
        QQ=[QQ q];
        t=[t ttt];
    end

end

