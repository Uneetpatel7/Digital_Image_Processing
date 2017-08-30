function [ f ] = ConnectedSet(img,p,q, T ,nbr, a)
        I = imread(img);
        [m,n] = size(I);

        V = zeros(m,n);  %visited matrix which s the final output of connected set

        list = zeros(2, m*n); %2-D array used for BFS
        head = 1;
        tail = 1;
        V(p,q) = 1;
 % 1) nbr ==1 means 4-Neighbour       
        if(nbr == 1)
            while (head <= tail  )
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if ( ~V (p,q+1) && abs(I(p,q) - I (p, q+1))<T)   
                    list(1,tail) = p;
                    list(2,tail) = q+1;
                    V(p,q+1) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if (~V (p-1,q) && abs(I(p,q) - I (p-1, q))<T)
                    list(1,tail) = p-1;
                    list(2,tail) = q;
                    V(p-1,q) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p,q-1) && abs(I(p,q) - I (p, q-1))<T)
                    list(1,tail) = p;
                    list(2,tail) = q-1;
                    V(p,q-1) = 1;
                    tail = tail + 1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p+1,q) && abs(I(p,q) - I (p+1, q))<T)
                    list(1,tail) = p+1;
                    list(2,tail) = q;
                    V(p+1,q) = 1;
                    tail = tail +1;
                 end
                end
                p = list(1,head);
                q = list(2,head);
                head = head+1;
            end
        end
% 1) nbr ==2 means Diagonal Neighbour
        if(nbr == 2)
            while (head <= tail  )
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if ( ~V (p-1,q-1) && abs(I(p,q) - I (p-1, q-1))<T)   
                    list(1,tail) = p-1;
                    list(2,tail) = q-1;
                    V(p-1,q-1) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if (~V (p-1,q+1) && abs(I(p,q) - I (p-1, q+1))<T)
                    list(1,tail) = p-1;
                    list(2,tail) = q+1;
                    V(p-1,q+1) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p+1,q+1) && abs(I(p,q) - I (p+1, q+1))<T)
                    list(1,tail) = p+1;
                    list(2,tail) = q+1;
                    V(p+1,q+1) = 1;
                    tail = tail + 1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p+1,q-1) && abs(I(p,q) - I (p+1, q-1))<T)
                    list(1,tail) = p+1;
                    list(2,tail) = q-1;
                    V(p+1,q-1) = 1;
                    tail = tail +1;
                 end
                end
                p = list(1,head);
                q = list(2,head);
                head = head+1;
            end
        end
% 1) nbr ==3 means 8-Neighbour
        if(nbr == 3)
            while (head <= tail  )
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if ( ~V (p-1,q-1) && abs(I(p,q) - I (p-1, q-1))<T)   
                    list(1,tail) = p-1;
                    list(2,tail) = q-1;
                    V(p-1,q-1) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if (~V (p-1,q+1) && abs(I(p,q) - I (p-1, q+1))<T)
                    list(1,tail) = p-1;
                    list(2,tail) = q+1;
                    V(p-1,q+1) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p+1,q+1) && abs(I(p,q) - I (p+1, q+1))<T)
                    list(1,tail) = p+1;
                    list(2,tail) = q+1;
                    V(p+1,q+1) = 1;
                    tail = tail + 1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p+1,q-1) && abs(I(p,q) - I (p+1, q-1))<T)
                    list(1,tail) = p+1;
                    list(2,tail) = q-1;
                    V(p+1,q-1) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if ( ~V (p,q+1) && abs(I(p,q) - I (p, q+1))<T)   
                    list(1,tail) = p;
                    list(2,tail) = q+1;
                    V(p,q+1) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if (~V (p-1,q) && abs(I(p,q) - I (p-1, q))<T)
                    list(1,tail) = p-1;
                    list(2,tail) = q;
                    V(p-1,q) = 1;
                    tail = tail +1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p-1,q-1) && abs(I(p,q) - I (p-1, q-1))<T)
                    list(1,tail) = p-1;
                    list(2,tail) = q-1;
                    V(p-1,q-1) = 1;
                    tail = tail + 1;
                 end
                end
                if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
                 if(~V (p+1,q+1) && abs(I(p,q) - I (p+1, q+1))<T)
                    list(1,tail) = p+1;
                    list(2,tail) = q+1;
                    V(p+1,q+1) = 1;
                    tail = tail +1;
                 end
                end
                p = list(1,head);
                q = list(2,head);
                head = head+1;
            end
        end
         
        subplot(2,2,a);
        imshow(V);

        % i=1;
        % j=1;
        % B=I;
        % while (i<m)
        %     while(j<n)
        %         I(i,j)=256;
        %         j = j+1;
        %     end
        %     j=1;
        %    i = i+3; 
        % end
        % 
        % % subplot(2,2,1)
        % % imshow(B);
        % % subplot(2,2,2)
        % % imshow(I);

end