function AAA = CalculateRobotMotion(MDH)
%CALCULATEROBOTMOTION Summary of this function goes here
%   Detailed explanation goes here
N = size(MDH,1);
M = size(MDH,3);

AAA = zeros(4,4,N,M)

for n = 1:M
    AAA(:,:,:,n) = Tlinks(MDH(:,:,n));
end

end

