figure(1);
inImg='Fig1.tif';
code1=myRLE(inImg);
subplot(2,2,1);
imshow(inImg);
title('Original Image');
outim=myRLD(code1);
subplot(2,2,2);
imshow(outim);
title('myRLD');

[dict,code]=myHuffmanEncode(imread(inImg));
[m,n]=size(imread(inImg));
outim=myHuffmanDecode(code,dict,m,n);
subplot(2,2,3);
imshow(outim);
title('myHuffmanDecode');

code=myRLE('Fig1.tif');
[dict,code2]=myHuffmanEncode(code);
[m,n]=size(code);
code3=myHuffmanDecode(code2,dict,m,n);
outim=myRLD(code1);
subplot(2,2,4);
imshow(outim);
title('myRLEHuffman');



figure(2);
inImg='Fig3.tif';
code1=myRLE(inImg);
subplot(2,2,1);
imshow(inImg);
title('Original Image');
outim=myRLD(code1);
subplot(2,2,2);
imshow(outim);
title('myRLD');

[dict,code]=myHuffmanEncode(imread(inImg));
[m,n]=size(imread(inImg));
outim=myHuffmanDecode(code,dict,m,n);
subplot(2,2,3);
imshow(outim);
title('myHuffmanDecode');

code=myRLE('Fig3.tif');
[dict,code2]=myHuffmanEncode(code);
[m,n]=size(code);
code3=myHuffmanDecode(code2,dict,m,n);
outim=myRLD(code3);
subplot(2,2,4);
imshow(outim);
title('myRLEHuffman');



figure(3);
inImg='Fig2.tif';
code1=myRLE(inImg);
subplot(2,2,1);
imshow(inImg);
title('Original Image');
outim=myRLD(code1);
subplot(2,2,2);
imshow(outim);
title('myRLD');

[dict,code]=myHuffmanEncode(imread(inImg));
[m,n]=size(imread(inImg));
outim=myHuffmanDecode(code,dict,m,n);
subplot(2,2,3);
imshow(outim);
title('myHuffmanDecode');

code=myRLE('Fig2.tif');
[dict,code2]=myHuffmanEncode(code);
[m,n]=size(code);
code3=myHuffmanDecode(code2,dict,m,n);
outim=myRLD(code3);
subplot(2,2,4);
imshow(outim);
title('myRLEHuffman');
