function h=DrawLinks(Org)

    X=Org(1,:);
    Y=Org(2,:);
    Z=Org(3,:);

    h=line(X,Y,Z);
    h.LineWidth=2;


end