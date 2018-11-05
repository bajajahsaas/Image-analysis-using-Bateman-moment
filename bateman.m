function s=bateman(m,n,img)
[nx,ny]=size(img);

% T=0;
% for k=0:n
%     for l=0:m
%         T=T+(B(n,k)*B(m,l)*summer(img,k,l));
%     end
% end
% 


for k=0:n
    for l=0:m
        T1(k+1,l+1)=(B(n,k)*B(m,l)*summer(img,k,l));
    end
end
T=sum(T1(:));
s=T/(beta(n)*beta(m));    