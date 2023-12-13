function Org = LinkOrigins(AA)
% Devolve uma matriz com as origens dos diversos sistemas de coordenadas de
% um manipulador, dadas as matrizes vindas de TLinks

    T=eye(4);
    Org(1:3,1) = [0 0 0]'

    for n=1:size(AA,3)
        T=T * AA(:,:,n);
        Org(:,n+1)=T(1:3,4);
    end
end

