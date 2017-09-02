function [ F ] = myCDF( P )
[m,n] = size(P) ;
F = zeros(m,n);
%assuming 1 row and n columns
F(1,1) = P(1,1); 
for i = 2:n
    F(1,i) = F(1,i-1) + P(1,i) ;
end

bar(F);
end

