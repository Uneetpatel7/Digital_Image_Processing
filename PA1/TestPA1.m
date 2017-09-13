subplot(2,3,1);
I = imread('cat-underexposed.jpg');
imshow(I);
title('Original Image');

subplot(2,3,2);
myHistEqual('cat-underexposed.jpg');
title('Image after Histogram Equalization ');

subplot(2,3,3);
myAHE('cat-underexposed.jpg');
title('Image after Adaptive Histogram Equalization');

myCegaHE('cat-underexposed.jpg');

pause;

subplot(2,3,1);
I = imread('lg-image9.jpg');
imshow(I);
title('Original Image');

subplot(2,3,2);
myHistEqual('lg-image9.jpg');
title('Image after  Histogram Equalization');

subplot(2,3,3);
myAHE('lg-image9.jpg');
title('Image after Adaptive Histogram Equalization');

myCegaHE('lg-image9.jpg');




pause;


subplot(2,3,1);

I = imread('snow.jpg');
imshow(I);
title('Original Image');

subplot(2,3,2);
myHistEqual('snow.jpg');
title('Image after  Histogram Equalization');

subplot(2,3,3);
myAHE('snow.jpg');
title('Image after  Adaptive Histogram Equalization');

myCegaHE('snow.jpg');

pause;
subplot(2,3,1);
I = imread('squirrel-underexposed.jpg');
imshow(I);
title('Original Image');

subplot(2,3,2);
myHistEqual('squirrel-underexposed.jpg');
title('Image after  Histogram Equalization');

subplot(2,3,3);
myAHE('squirrel-underexposed.jpg');
title('Image after  Adaptive Histogram Equalization');

myCegaHE('squirrel-underexposed.jpg');
pause;
        
subplot(2,3,1);
I = imread('Over.JPG');
imshow(I);
title('Original Image');

subplot(2,3,2);
myHistEqual('Over.JPG');
title('Image after  Histogram Equalization');

subplot(2,3,3);
myAHE('Over.JPG');
title('Image after  Adaptive Histogram Equalization');

myCegaHE('Over.JPG');

