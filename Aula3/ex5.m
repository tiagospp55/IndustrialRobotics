  
clc;close all;clear all;
[P,F]=seixos3(1);
    h=patch('Vertices', P(1:3, :)', 'Faces', F, 'Facecolor', 'g');

    grid on; axis on; hold on;
    xlabel('x'); ylabel('y'); zlabel('z')
    axis([-1 6 -1 7 -1 6])
    view(110, 15)

    NN=10;
[th,phi,r] = cart2sph(0,0,5);

    T(:,:,:,1)=mtrans(0,0,linspace(0, 5, NN));
    T(:,:,:,2)=mrotx(linspace(0,th,NN));
    T(:,:,:,3)=mtrans(0, linspace(0,6,NN),0);
     T(:,:,:,4)=mroty(linspace(0, phi, NN));
    T(:,:,:,5)=mtrans(linspace(0,4,NN), 0, 0);
    T(:,:,:,6)=mrotx(linspace(0, th, NN));

    order=[0 1 0 1 0 1];
    Tcurr=eye(4,4);
while 1
    for n=1:size(T,4)
        manimate(h, P, Tcurr, T(:,:,:,n), order(n));
    end
end