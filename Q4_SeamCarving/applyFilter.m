function outIm = applyFilter(im, F)
% take grayscale image F and apply the filter F (with odd dimensions) to F

[r, c] = size(im);
padded = vertcat(zeros(1, r + 2), horzcat(zeros(c, 1), im, zeros(c, 1)), zeros(1, r + 2));
outIm = zeros(r, c);

for i = 1:r
    for j = 1:c
        x = padded(i:i + 2, j:j + 2) .* F;        
        outIm(i, j) = sum(x(:));
    end
end

end
