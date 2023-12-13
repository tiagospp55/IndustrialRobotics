function h=DrawLinks(Org)
% Desenha um gráfico que representa os elos do robô
    X=Org(1,:);
    Y=Org(2,:);
    Z=Org(3,:);

    h=line(X,Y,Z);


end