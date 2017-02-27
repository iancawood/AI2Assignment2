function eng = computeEngGrad(im, F)
gray = (im(:, :, 1) + im(:, :, 2) + im(:, :, 3)) / 3;
eng = sqrt(applyFilter(gray, F) .^ 2 + applyFilter(gray, transpose(F)) .^ 2); 
end
