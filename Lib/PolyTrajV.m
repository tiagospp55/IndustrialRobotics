function [QQ,t] = PolyTrajV(Q0, Qf, Qv0, Qvf, N, t0, tf)
%POLYTRAJV Retorna trajetorias polinominais de terceira ordem entre duas
%posturas com velocidades iniciais e finais distintas
% Q0 - vetor da posicao inicial das juntas, theta 0 
%Qf - vetor da posicao final das juntas 
% Qv0 - vetor da velocidade inicial das juntas
% Qvf - vetor da velocidadd final das juntas
% t0 - instante inicial da trajetória em segundos
% tf - instante final da trajetória em segundos 
% N - numero de pontos a usar na definição da trajetória

t=linspace(t0, tf, N);

delta_t = tf - t0;
   
a0=Q0;
a1=Qv0;
a2=3/delta_t^2 * (Qf-Q0) - 2/delta_t*Qv0 - 1/delta_t*Qvf;
a3=-2/delta_t^3 * (Qf-Q0) + 1/delta_t^2 * (Qvf+Qv0);

QQ=a0+a1*(t-t0) + a2*(t-t0).^2 + a3*(t-t0).^3;
end

