function [ f ] = RedEyeRemoval(img )
    I = imread(img);
    [p,q,r] = size(I);
        for i=1:p
            for j=1:q
                if(I(i,j,1)>50) %if threshold is above 50 then take weighted average of I of B and G
                    I(i,j,1) = I(i,j,2)+I(i,j,3)/6;
                end
             end
        end
    subplot(2,2,2);
    imshow(I);
    title('Image after Red Eye Removal');
end
