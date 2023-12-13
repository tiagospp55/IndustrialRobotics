 [P,F]=seixos3(0.75);

    L1=3;
    L2=3;
    L3=2;

    DH_RR=[0 L1 0 0
           0 L2 0 0];

    DH_RRR=[0 L1 0 0
            0 L2 0 0
            0 L3 0 0];

    DH_RR3D=[0 0 L1 pi/2
             0 L2 0 0];

    DH_RRA=[0 0 L1 pi/2
            0 L2 0 0
            0 L3 0 0];

    DH_all=cell(1,4);

    Dh_all{1}=DH_RR;
    Dh_all{2}=DH_RRR;
    Dh_all{3}=DH_RR3D;
    Dh_all{4}=DH_RRA;

    for n=1:size(Dh_all, 2)
        subplot(2,2,n)

        AA=Tlinks(Dh_all{n});            
        Org=LinkOrigins(AA);
        DrawLinks(Org);
    
        grid on
        axis equal
        hold on
    
        H=DrawFrames(AA, P, F);
        view(3)
    end