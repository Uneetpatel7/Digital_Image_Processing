clc
clear all
I = imread('tire.tif');

[m,n] = size(I);
disp(m);
nbins = 20 ;
F = zeros(1, nbins + 1);
k = max(m,n) ;
for i = 1:m
    for j = 1:n
        
       index = (double(I(i,j))*nbins/255) + 1 ;
       ind = fix(index) ;
       if (ind == nbins + 1)
           ind = nbins ;
       end
           
       F(1 , ind) = F(1,ind) + 1 ;
    end
end
disp(F);
bar(F);        