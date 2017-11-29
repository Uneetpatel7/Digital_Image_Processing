function [ dict,outcode ] = myHuffmanEncode( I )
  
    [m,n]=size(I);
    for i=1:m
        for j=1:n
            if(I(i,j)==255)
                I(i,j)=254;
            end
        end
    end
    
    PDF=myImPDF(I,255);
    map=[];    
    for i=1:255
        if(PDF(i)>0)
            if(i<255)
                map=[map;i-1,PDF(i)];
            else
                map=[map;i-1,PDF(i)];
            end
        end
    end
    
    pro=map(:,2);
    p=pro;
    n=length(p);
    symbols=map(:,1);
    [dict,averagelength]=huffmandict(symbols,p);
    temp=dict;
    t=dict(:,2);
    
    for i=1:length(temp)
        temp{i,2}=num2str(temp{i,2});
    end
    
    
    disp('The huffman code dict:');
    disp(temp)
    
    
    
    
    encode=[];
    for i=1:m
        sym=I(i,:);
        encode=[encode,huffmanenco(sym,dict)];
    end
     disp('The encodeed output:');
     outcode=encode;
     [m,n]=size(I);
     outcode=(outcode);
     % dlmwrite('Fig1_hc.txt',outcode);
     %fileID = fopen('Fig3_hc.txt','w');
     %fprintf(fileID,'%d ',outcode);
     %save('Fig2_hc.mat','outcode');
end

