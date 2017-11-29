function [ outCode ] = myRLE( inImg )
    outCode=[];
    I=imread(inImg);
    I=I(1:255,1:255);
    [m,n]=size(I);
    current=I(1,1);
    length=0;
    outCode=[m,n];
    for i=1:m
        for j=1:n
            if(I(i,j)==current)
               length=length+1;
            else
                outCode=[double(outCode),current,length];
                current=I(i,j);
                length=1;
            end
        end
    end
     outCode=[outCode,current,length];  
  
end

