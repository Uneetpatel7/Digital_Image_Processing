function [I] = myImgNeg( inImg )
I = imread(inImg) ;
[m,n] = size(I) ;
max = 255 ;

for i = 1:m
    for j = 1:n
        I(i,j) = max - I(i,j);
    end
end

imshow(I)

end

