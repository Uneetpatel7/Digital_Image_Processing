function [ final ] = myHistEqual( inImg , nBins )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here



Img = imread(inImg);

I1 = Img(:,:,1);
I2 = Img(:,:,2);
I3 = Img(:,:,3); 

[m,n,k] = size(I1);
num_of_pixels = m*n ;

hist = zeros(256,1);
prob = zeros(256,1);
final = zeros(256,3);
for i=1:m
    for j=1:n
        intensty=I1(i,j,1);
        hist(intensty+1)=hist(intensty+1)+1;
        prob(intensty+1)=hist(intensty+1)/num_of_pixels;
    end
end

sum = 0.0;

for i=1:size(prob)
   sum = sum + prob(i);
   final(i,1) = round (sum* 255);  
end

for i=1:m
    for j=1:n
       I1(i,j,1)=final(I1(i,j,1)+1,1);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[m,n,k] = size(I2);
num_of_pixels = m*n ;

hist = zeros(256,1);
prob = zeros(256,1);
% final = zeros(256,1);
for i=1:m
    for j=1:n
        intensty=I2(i,j,1);
        hist(intensty+1)=hist(intensty+1)+1;
        prob(intensty+1)=hist(intensty+1)/num_of_pixels;
    end
end

sum = 0.0;

for i=1:size(prob)
   sum = sum + prob(i);
   final(i,2) = round (sum* 255);  
end

for i=1:m
    for j=1:n
       I2(i,j,1)=final(I2(i,j,1)+1,2);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[m,n,k] = size(I3);
num_of_pixels = m*n ;

hist = zeros(256,1);
prob = zeros(256,1);
% final = zeros(256,1);
for i=1:m
    for j=1:n
        intensty=I3(i,j,1);
        hist(intensty+1)=hist(intensty+1)+1;
        prob(intensty+1)=hist(intensty+1)/num_of_pixels;
    end
end

sum = 0.0;

for i=1:size(prob)
   sum = sum + prob(i);
   final(i,3) = round (sum* 255);  
end

for i=1:m
    for j=1:n
       I3(i,j,1)=final(I3(i,j,1)+1,3);
    end
end

Eq(:,:,1) = I1;
Eq(:,:,2) = I2;
Eq(:,:,3) = I3;

imshow(Eq);
end
