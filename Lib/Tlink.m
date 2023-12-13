function A = Tlink(theta, l, d, alpha)
%TLINK Summary of this function goes here
%   Detailed explanation goes here

if nargin == 1
    l = theta(2)
    d = theta(3)
    alpha = theta(4)
    theta = theta(1)
end

A = rotz(theta)*Trans(l,0,d)*rotx(alpha)

end

