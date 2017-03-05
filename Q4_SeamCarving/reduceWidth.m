function [seam, imOut, c] = reduceWidth(im, E)
[M, P] = seamV_DP(E);
[seam, c] = bestSeamV(M, P);
imOut = removeSeamV(im, seam);
end