function [Tlast1, Tlast2, Tlast3]=manimate(h, hpoints, Tcurr1, Tcurr2, Tcurr3, Tset, ord)
    %h – handle gráfico do objeto a animar (movimentar);
    %P – matriz de pontos do objeto (no formato homogéneo);
    %Tcurr – Matriz de transformação da posição inicial do objeto (inı́cio da
    %animação);
    %Tset – hipermatriz de transformações geométricas com o conjunto dos
    %passos intermédios para a animação (sucessivas posições do objeto P).
    %ord – indicador se as transformações presentes na hipermatriz são para
    %ser feitas no referencial local (ord=1) ou no referencial global (ord=0);
    %Tlast – última posição (matriz de transformação) onde foi deixado o
    %objeto no fim da animação.
    
    P2(:,:) = hpoints(:,:,2)
    P3(:,:) = hpoints(:,:,3)

    m=size(Tset,3);

    if nargin < 5
        ord=zeros(1, m);
    end

    %padding se o vetor for muito pequeno
    ord(end:m)=ord(end);

    for n=1:m

        if ord(n)==1 %local
            TT1=Tcurr*Tset(:,:,1);
            TT2=Tcurr*Tset(:,:,1);
            TT3=Tcurr*Tset(:,:,1);

        else%global
            TT1=Tset(:,:,:)*Tcurr1
            TT2=Tset(:,:,:)*Tcurr2
            TT3=Tset(:,:,:)*Tcurr3
        end
            
        Pn1=TT1*hpoints(1:3,1)
        Pn2=TT1*hpoints(1:3,2)
        Pn3=TT1*hpoints(1:3,3)
        set(h(1), 'Vertices', Pn1(1:3,:)')
        set(h(2),'Vertices', Pn2(1:3,:)')
        set(h(3),'Vertices', Pn3(1:3,:)')
        pause(0.05)
    end

    Tlast1=TT1;
    Tlast2=TT2;
    Tlast3=TT3;

end