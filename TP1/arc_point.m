function A = arc_point(init_point,final_point,betha,higher)
middle_point=[(final_point(1)-init_point(1))/2 (final_point(2)-init_point(2))/2 (final_point(3)-init_point(3))/2];
%distance_of_final_to_init=sqrt((final_point(1)-init_point(1)^2+ final_point(2)-init_point(2)^2+final_point(3)-init_point(3)^2));
distance_of_final_to_init = sqrt((final_point(1) - init_point(1))^2 + (final_point(2) - init_point(2))^2 + (final_point(3) - init_point(3))^2);

[phi,theta, r] = cart2sph(final_point(1) - init_point(1), final_point(2) - init_point(2), final_point(3) - init_point(3));
angulo2=theta;
angulo1=phi;

translation=mtrans(init_point(1),init_point(2),init_point(3));% significa que temos x,y,z
orientation_1 = mrotaz_P2(angulo1)*mrotay_P2(-angulo2);
%trnaslacao ao ponto medio
translation_x=mtrans(distance_of_final_to_init/2,0,0);
rotation_emx=mrotax_P2(betha);
% Trnaslacao ao longo do Z
translation_z=mtrans(0,0,higher);
% Criacao de matriz para que?
matrix_homoge=translation*orientation_1*translation_x*rotation_emx*translation_z;
A = matrix_homoge(1:3,4);
end