function [seam, imOut, c] = increaseWidth(im, E)
[M, P] = seamV_DP(E);
[seam, c] = bestSeamV(M, P);
imOut = addSeamV(im, seam);
end