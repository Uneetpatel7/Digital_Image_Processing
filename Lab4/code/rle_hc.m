code=myRLE('Fig1.tif');
[dict,code2]=myHuffmanEncode(code);
[m,n]=size(code)
%save('Fig2_rle_hc.mat','code2');
code3=myHuffmanDecode(code2,dict,m,n);
disp('================================');

disp('================================');
outim=myRLD(code1);
imshow(outim);
imsave