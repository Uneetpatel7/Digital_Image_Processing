function [ F ] = myImgHist( inImg , nBins  )
%UNTITLED4 Summary of this function goes here

I = imread(inImg);
[m,n] = size(I);


F = zeros(1, nBins);

for i = 1:m
    for j = 1:n
        
       index = (double(I(i,j))*nBins/255) + 1 ;
       ind = fix(index) ;
       if (ind >= nBins + 1)
           ind = nBins ;
       end
           
       F(1 , ind) = F(1,ind) + 1 ;
    end
end
bar(F);     


end

