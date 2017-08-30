image_name = input('Input the image name to correct red eye: ', 's');

subplot(2,2,1);
imshow(image_name);
title('Original Image');
RedEyeRemoval(image_name);