function [ outImg ] = myRLD( inCode )
    m=inCode(1,1);
    n=inCode(1,2);
    [p,q]=size(inCode);
    outImg=zeros(m,n);
    R=1;
    C=1;
    for i=3:2:q
        current=inCode(1,i);
        length=inCode(1,i+1);
        for j=1:length
            outImg(R,C)=current;
            if(C<n)
                C=C+1;
            else
                C=1;
                R=R+1;
            end
        end
    end
    outImg=uint8(outImg);
end

