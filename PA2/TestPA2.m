figure(1);
subplot(3,5,1);
I = myBilateral('MinaretLake.jpg' , 3 , 22 , 22);
imshow(I);
title('win size=3, sigmad=22, sigmar=22|');

subplot(3,5,2);
I = myBilateral('MinaretLake.jpg' , 5 , 5 ,5);
imshow(I);
title('win size=5, sigmad=5, sigmar=5|');

subplot(3,5,3);
I = myBilateral('MinaretLake.jpg' , 5 , 34 , 34);
imshow(I);
title('win size=5, sigmad=34, sigmar=34|');

subplot(3,5,4);
I = myBilateral('MinaretLake.jpg' , 7 , 18 , 18);
imshow(I);
title('win size=7, sigmad=18, sigmar=18|');

subplot(3,5,5);
I = myBilateral('MinaretLake.jpg' , 9 , 18 , 18);
imshow(I);
title('win size=9, sigmad=18, sigmar=18|');

subplot(3,5,6);
I=myOlympic('MinaretLake.jpg' , 3);
imshow(I);
title('win size = 3 ');

subplot(3,5,7);
I=myOlympic('MinaretLake.jpg' , 5);
imshow(I);
title('win size = 5 ');

subplot(3,5,8);
I=myOlympic('MinaretLake.jpg' , 7);
imshow(I);
title('win size = 7 ');

subplot(3,5,9);
I=myOlympic('MinaretLake.jpg' , 9);
imshow(I);
title('win size = 9 ');

subplot(3,5,10);
I=myOlympic('MinaretLake.jpg' , 11);
imshow(I);
title('win size = 11 ');

subplot(3,5,11);
I= myAdaptive('MinaretLake.jpg' , 5 , 9);
imshow(I);
title('win size = 5 , threshold = 4');

subplot(3,5,12);
I= myAdaptive('MinaretLake.jpg' , 5 , 19);
imshow(I);
title('win size = 5 , threshold = 19');

subplot(3,5,13);
I= myAdaptive('MinaretLake.jpg' , 5 , 28);
imshow(I);
title('win size = 5 , threshold = 28');

subplot(3,5,14);
I= myAdaptive('MinaretLake.jpg' , 7 , 19);
imshow(I);
title('win size = 7 , threshold = 19');

subplot(3,5,15);
I= myAdaptive('MinaretLake.jpg' , 7 , 28);
imshow(I);
title('win size = 7 , threshold = 28');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
subplot(3,5,1);
I = myBilateral('lena.jpg' , 3 , 22 , 22);
imshow(I);
title('win size=3, sigmad=22, sigmar=22|');

subplot(3,5,2);
I = myBilateral('lena.jpg' , 5 , 5 , 5);
imshow(I);
title('win size=5, sigmad=5, sigmar=5|');

subplot(3,5,3);
I = myBilateral('lena.jpg' , 5 , 34 , 34);
imshow(I);
title('win size=5, sigmad=34, sigmar=34|');

subplot(3,5,4);
I = myBilateral('lena.jpg' , 7 , 18 , 18);
imshow(I);
title('win size=7, sigmad=18, sigmar=18|');

subplot(3,5,5);
I = myBilateral('lena.jpg' , 9 , 18 , 18);
imshow(I);
title('win size=9, sigmad=18, sigmar=18|');

subplot(3,5,6);
I=myOlympic('lena.jpg' , 3);
imshow(I);
title('win size = 3 ');

subplot(3,5,7);
I=myOlympic('lena.jpg' , 5);
imshow(I);
title('win size = 5 ');

subplot(3,5,8);
I=myOlympic('lena.jpg' , 7);
imshow(I);
title('win size = 7 ');

subplot(3,5,9);
I=myOlympic('lena.jpg' , 9);
imshow(I);
title('win size = 9 ');

subplot(3,5,10);
I=myOlympic('lena.jpg' , 11);
imshow(I);
title('win size = 11 ');

subplot(3,5,11);
I= myAdaptive('lena.jpg' , 5 , 9);
imshow(I);
title('win size = 5 , threshold = 4');

subplot(3,5,12);
I= myAdaptive('lena.jpg' , 5 , 19);
imshow(I);
title('win size = 5 , threshold = 19');

subplot(3,5,13);
I= myAdaptive('lena.jpg' , 5 , 28);
imshow(I);
title('win size = 5 , threshold = 28');

subplot(3,5,14);
I= myAdaptive('lena.jpg' , 7 , 19);
imshow(I);
title('win size = 7 , threshold = 19');

subplot(3,5,15);
I= myAdaptive('lena.jpg' , 7 , 28);
imshow(I);
title('win size = 7 , threshold = 28');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(3);
subplot(3,5,1);
I = myBilateral('luca.gif' , 3 , 22 , 22);
imshow(I);
title('win size=3, sigmad=22, sigmar=22|');

subplot(3,5,2);
I = myBilateral('luca.gif' , 5 , 12 , 12);
imshow(I);
title('win size=5, sigmad=12, sigmar=12|');

subplot(3,5,3);
I = myBilateral('luca.gif' , 5 , 34 , 34);
imshow(I);
title('win size=5, sigmad=34, sigmar=34|');

subplot(3,5,4);
I = myBilateral('luca.gif' , 7 , 18 , 18);
imshow(I);
title('win size=7, sigmad=18, sigmar=18|');

subplot(3,5,5);
I = myBilateral('luca.gif' , 9 , 18 , 18);
imshow(I);
title('win size=9, sigmad=18, sigmar=18|');

subplot(3,5,6);
I=myOlympic('luca.gif' , 3);
imshow(I);
title('win size = 3 ');

subplot(3,5,7);
I=myOlympic('luca.gif' , 5);
imshow(I);
title('win size = 5 ');

subplot(3,5,8);
I=myOlympic('luca.gif' , 7);
imshow(I);
title('win size = 7 ');

subplot(3,5,9);
I=myOlympic('luca.gif' , 9);
imshow(I);
title('win size = 9 ');

subplot(3,5,10);
I=myOlympic('luca.gif' , 11);
imshow(I);
title('win size = 11 ');

subplot(3,5,11);
I= myAdaptive('luca.gif' , 5 , 9);
imshow(I);
title('win size = 5 , threshold = 4');

subplot(3,5,12);
I= myAdaptive('luca.gif' , 5 , 19);
imshow(I);
title('win size = 5 , threshold = 19');

subplot(3,5,13);
I= myAdaptive('luca.gif' , 5 , 28);
imshow(I);
title('win size = 5 , threshold = 28');

subplot(3,5,14);
I= myAdaptive('luca.gif' , 7 , 19);
imshow(I);
title('win size = 7 , threshold = 19');

subplot(3,5,15);
I= myAdaptive('luca.gif' , 7 , 28);
imshow(I);
title('win size = 7 , threshold = 28');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(4);
subplot(3,5,1);
I = myBilateral('kitten-orig.gif' , 3 , 22 , 22);
imshow(I);
title('win size=3, sigmad=22, sigmar=22|');

subplot(3,5,2);
I = myBilateral('kitten-orig.gif' , 5 , 12 , 12);
imshow(I);
title('win size=5, sigmad=12, sigmar=12|');

subplot(3,5,3);
I = myBilateral('kitten-orig.gif' , 5 , 34 , 34);
imshow(I);
title('win size=5, sigmad=34, sigmar=34|');

subplot(3,5,4);
I = myBilateral('kitten-orig.gif' , 7 , 18 , 18);
imshow(I);
title('win size=7, sigmad=18, sigmar=18|');

subplot(3,5,5);
I = myBilateral('kitten-orig.gif' , 9 , 18 , 18);
imshow(I);
title('win size=9, sigmad=18, sigmar=18|');

subplot(3,5,6);
I=myOlympic('kitten-orig.gif' , 3);
imshow(I);
title('win size = 3 ');

subplot(3,5,7);
I=myOlympic('kitten-orig.gif' , 5);
imshow(I);
title('win size = 5 ');

subplot(3,5,8);
I=myOlympic('kitten-orig.gif' , 7);
imshow(I);
title('win size = 7 ');

subplot(3,5,9);
I=myOlympic('kitten-orig.gif' , 9);
imshow(I);
title('win size = 9 ');

subplot(3,5,10);
I=myOlympic('kitten-orig.gif' , 11);
imshow(I);
title('win size = 11 ');

subplot(3,5,11);
I= myAdaptive('kitten-orig.gif' , 5 , 9);
imshow(I);
title('win size = 5 , threshold = 4');

subplot(3,5,12);
I= myAdaptive('kitten-orig.gif' , 5 , 19);
imshow(I);
title('win size = 5 , threshold = 19');

subplot(3,5,13);
I= myAdaptive('kitten-orig.gif' , 5 , 28);
imshow(I);
title('win size = 5 , threshold = 28');

subplot(3,5,14);
I= myAdaptive('kitten-orig.gif' , 7 , 19);
imshow(I);
title('win size = 7 , threshold = 19');

subplot(3,5,15);
I= myAdaptive('kitten-orig.gif' , 7 , 28);
imshow(I);
title('win size = 7 , threshold = 28');


%%%%%%%%%%%%%%%%%%%% THE END %%%%%%%%%%%%%%%%%
