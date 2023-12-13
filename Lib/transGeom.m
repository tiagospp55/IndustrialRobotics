function M = TransGeom(x,y, alpha)
%TRANSGEOM Summary of this function goes here
%   criar uma função de transformação geométrica que aceita três parâmetros e retorna a matriz de transformação M correspondendo a uma rotação alpha
%seguida de uma translação (x,y)

M = [cos(alpha) -sin(alpha)  x
    sin(alpha)  cos(alpha)   y
    0           0            1];
end