function outIm = applyFilter(im, F)
% take grayscale image F and apply the filter F (with odd dimensions) to F

[r, c] = size(im);
outIm = zeros(r, c);

[r_F, c_F] = size(F);
rOffset = (r_F - 1) / 2;
cOffset = (c_F - 1) / 2;

vertPadded = vertcat(zeros(rOffset, c), im, zeros(rOffset, c));
horzPadding = zeros(r + (rOffset * 2), cOffset);
padded = horzcat(horzPadding, vertPadded, horzPadding);

for i = 1:r
    for j = 1:c        
        x = padded(i:i + (r_F - 1), j:j + (c_F - 1)) .* F;        
        outIm(i, j) = sum(x(:));
    end
end

end
