function outIm = applyFilter(im, F)
% take grayscale image F and apply the filter F (with odd dimensions) to F

[r, c] = size(im);
[r_F, c_F] = size(F);
padded = horzcat(zeros(r + 2, 1), vertcat(zeros(1, c), im, zeros(1, c)), zeros(r + 2, 1));
outIm = zeros(r, c);

for i = 1:r
    for j = 1:c
        x = padded(i:i + (r_F - 1), j:j + (c_F - 1)) .* F;        
        outIm(i, j) = sum(x(:));
    end
end

end
