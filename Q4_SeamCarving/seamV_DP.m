function [M, P] = seamV_DP(E)
[r, c] = size(E);
M = zeros(r, c);
P = zeros(r, c) - 1;

M(1, :) = E(1, :);

for i = 2:r
    for j = 1:c
        options = NaN(1, c);   
        options(j) = M(i - 1, j);
        
        if j ~= 1
            options(j - 1) = M(i - 1, j - 1);
        end        
        if j ~= c
            options(j + 1) = M(i - 1, j + 1);
        end
        
        [minVal, minIndex] = min(options);
        
        M(i, j) = E(i, j) + minVal;
        P(i, j) = minIndex;
    end    
end

end