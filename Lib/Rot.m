function R = Rot(theta)
%ROT Summary of this function goes here
%   Função que roda uma matriz o angulo pedido

R = [cos(theta) -sin(theta)
    sin(theta) cos(theta)];
end