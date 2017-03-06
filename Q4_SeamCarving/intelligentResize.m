function [totalCost, imOut] = intelligentResize(imInput, v, h, W, mask, maskWeight)
F = [-1 0 1];
imOut = cat(3, imInput, mask);

vCount = abs(v);
hCount = abs(h);
totalCost = 0;

for i = 1:vCount + hCount
   E = computeEng(imOut, F, W, maskWeight);
    
   if (mod(i, 2) ~= 0 && hCount > 0) || vCount == 0
       if h > 0
           [~, imOut, c] = increaseHeight(imOut, E);
       else
           [~, imOut, c] = reduceHeight(imOut, E);
       end
   else       
       hCount = hCount - 1;
       if v > 0
           [~, imOut, c] = increaseWidth(imOut, E);
       else
           [~, imOut, c] = reduceWidth(imOut, E);
       end
       vCount = vCount - 1;
   end
   
   totalCost = totalCost + c;
end

end