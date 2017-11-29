function [ outImg ] = myHuffmanDecode( incode,dict,m,n )
    decode=huffmandeco(incode,dict);
    disp('The symbols are:');
    disp(decode); 
    outImg=zeros(m,n);
    for i=1:m
        outImg(i,:)=decode((i-1)*n+1:i*n);
    end
    outImg=uint8(outImg);
    imshow(outImg);
    imsave

end

