function imOut = addSeamV(im, seam)
imOut = zeros(size(im) + [0 1 0]);

for i=1:size(seam, 1)
    imOut(i, :, :) = horzcat(im(i, 1:seam(i), :), im(i, seam(i), :), im(i, seam(i)+1:end, :));
end

end
