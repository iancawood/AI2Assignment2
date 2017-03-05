function [seam, imOut, c] = increaseHeight(im, E)
im = cat(3, im(:, :, 1).', im(:, :, 2).', im(:, :, 3).', im(:, :, 4).');
E = transpose(E);
[seam, imOut, c] = increaseWidth(im, E);
imOut = cat(3, imOut(:, :, 1).', imOut(:, :, 2).', imOut(:, :, 3).', imOut(:, :, 4).');
end