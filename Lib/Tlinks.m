

function A = Tlinks(DH)
%TLINKS Aceita uma matriz D-H e devolve uma matriz de transformação para
%cada elo dispostas ao longo da 3.ª dimensão da hipermatriz AA
%   Aplica numa hipermatriz a função TLink
A = zeros(4,4,size(DH,1));

for n = 1:size(DH,1)
    A(:,:,n) = Tlink(DH(n,1), DH(n,2), DH(n,3), DH(n,4));
end

end
