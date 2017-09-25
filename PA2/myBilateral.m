function [ ID ] = myBilateral( inImg, wSize , sigmad , sigmar)
%%img reading
I = imread(inImg);
[m,n,c] = size(I);

%%%%defiining the padding size 
pad_size = floor(wSize/2);
I_padded = zeros(m+2*pad_size , n+2*pad_size , c); %%%making a new extra arge paded matrix with zeros as padded values
I_padded(pad_size+1:pad_size+m,pad_size+1:pad_size+n,1:end) = I(1:end,1:end,1:end);

ID = I;

%applying the formula on all three colors 
for z=1:c
    for i=pad_size+1:pad_size+m
        for j=pad_size+1:pad_size+n
            numerator =0.0; denominator = 0.0;
            weight = 0.0;
            for k=i-pad_size:i+pad_size
                for l=j-pad_size:j+pad_size
                        weight = exp(-(((i-k)^2+(j-l)^2)/(2*sigmad^2) + (norm(I_padded(i,j,z) - I_padded(k,l,z))^2)/(2*sigmar^2) ));
                        numerator = numerator+ weight*I_padded(k,l,z);
                        denominator = denominator + weight;
                end
            end
            ID(i,j,z) = numerator/denominator;
        end
    end
end
% imshow(ID);
end

