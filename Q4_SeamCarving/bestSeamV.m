function [seam, c] = bestSeamV(M, P)
r = size(M, 1);
seam = zeros(r, 1);
[c, index] = min(M(r, :));

for i = r:-1:1
    seam(i) = index;
    index = P(i, index);
end

end