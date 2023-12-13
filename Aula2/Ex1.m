
    P1=[-1 0 0 0]';
    P2=[1 0 0 0]';
    P3=[0 2 0 0]';
    
    A1=[P1 P2 P3];

    h=fill3(A1(1,:), A1(2,:), A1(3,:), 'b');

    grid on
    axis equal
    axis([-5 5 -5 5 -5 5])

    xlabel('X')
    ylabel('Y')
    zlabel('Z')

    N=100;

    a=linspace(0, 4*pi, N);

    while 1
        for n=1:N
            T=rotx(a(n));
            Q=T*A1;

            set(h, 'XData', Q(1,:), 'YData', Q(2,:), 'ZData', Q(3,:))
            pause(0.05)
        end
        pause(1)
    end

