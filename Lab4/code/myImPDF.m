function [f] = myImPDF (inImg,nBins)
     [n,m]=size(inImg);
    f=zeros(int16(nBins),1);
    binsize=(255/nBins);
    for i= 1:1:n
        for j=1:1:m
             final=int16(1+inImg(i,j)/binsize);
            % final
            if(final==nBins+1)
                final=nBins;
            end
             f(final)=f(final)+1;
        end
    end
    f=f/(n*m);
    x= 1:1:(nBins);
   
end