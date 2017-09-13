function [ final ] = myCegaHE( inImg )

    I = imread(inImg);
    [m,n,k] = size(I);
    final = myHistEqual(inImg,256);
    a=3;
    b=3;
    I1 = I;
%I1 GA I2 GVR I3 DRE
    for k=1:3
        for i=1:255
            L=round((a*[(i/127)-1]*[(i/127)-1])+b);
            d=final(i+1,k)-final(i,k);
            if(d>L)
                final(i+1,k)=final(i+1,k)-(d-L);
            end
        end
    end

    for i=1:m
        for j=1:n
           I1(i,j,1)=final(I(i,j,1)+1,1);
        end
    end

    for i=1:m
        for j=1:n
           I1(i,j,3)=final(I(i,j,3)+1,3);
        end
    end

    for i=1:m
        for j=1:n
           I1(i,j,2)=final(I(i,j,2)+1,2);
        end
    end
subplot(2,3,4);
title('GA Image');
 imshow(I1);
    for k=1:3
        this = 1;
        prev =1;
        while (this<256)
            while(this < 256  && final(this,k) == final(prev,k))
                this = this+1;
            end
            temp = final(prev,k);
            D = final(this,k)-final(prev,k);
            while(prev<this)
                final(prev,k) = temp;
                if(temp<D)
                    temp = temp+1;
                end
                prev = prev+1;
            end
        end
    end

    I2 = I;

    for i=1:m
        for j=1:n
           I2(i,j,1)=final(I(i,j,1)+1,1);
        end
    end

    for i=1:m
        for j=1:n
           I2(i,j,3)=final(I(i,j,3)+1,3);
        end
    end

    for i=1:m
        for j=1:n
           I2(i,j,2)=final(I(i,j,2)+1,2);
        end
    end

subplot(2,3,5);
title('GVR Image');
 imshow(I2);

mean = zeros(3,1);
for k =1:3
   for i=1:256
       mean(k) = mean(k) + i*(final(i,k));
    end
end

grad = zeros(256,3);
for k=1:3
    for i=2:m-1
        for j=2:n-1
            grad(I2(i,j,k)+1,k) = abs(I2(i-1,j,k)-I2(i+1,j,k)) + abs(I2(i,j-1,k)-I2(i,j+1,k));
        end
    end
end

p = zeros(m,n,3);

temp = (zeros(3,1));
for k=1:3
for (i=1:256)
    temp(k) = temp(k) + final(i,k);
end
end
I4=I2;
for k=1:3
for (i=1:256-1)
    grad(i,k) =  grad(i,k)/temp(k);
end
end

rfp = zeros(3,1);
I3 = I2;
rfp(1) = 255 - final(256,1);
rfp(2) = 255 - final(256,2);
rfp(3)= 255 - final(256,3);


for k=1:3
    for i=1:m
        for j=1:n
            if(k==1)
                I4(i,j,k) = I2(i,j,k)*rfp(1);
            end
            if(k==2)
                I4(i,j,k) = I2(i,j,k)*rfp(2);
            end
            if(k==3)
                I4(i,j,k) = I2(i,j,k)*rfp(3);
            end
        end
    end
end

subplot(2,3,6);
title('DRE Image');
imshow(I3);
end






        


    