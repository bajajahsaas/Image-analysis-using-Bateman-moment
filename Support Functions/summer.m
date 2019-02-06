function T1=summer(img,k,l)
%T1=0;
% for i=0:k
%     for j=0:l
%         val=0
%         for r=0:i
%             for u=0:j
%              %val=val+nchoosek(i,r)*nchoosek(j,u)*Geometric(img, r, u); 
%              val=val+nchoosek(i,r)*nchoosek(j,u)*Central(img, r, u); %trans_IN
%            
%             end 
%         end 
% 
%         T1=T1+val*(stirlingno(k,i)*stirlingno(l,j))/(2^(i+j));
%     end 
% end 
Y=2; %making scale invariant
for i=0:k
    for j=0:l
        
        for r=0:i
            for u=0:j
             %h(r+1,u+1)=Geometric(img, r, u); 
             h(r+1,u+1)= Central(img, r, u); %trans_IN
             h1(r+1,u+1)=nchoosek(i,r)*nchoosek(j,u)*h(r+1,u+1)%trans_IN
             
             %v(r+1,u+1) = Central(img, r, u)*Central(img, 0,0)^(Y+1)/(Central(img, r+Y,0)*Central(img,0, u+Y)); 
               %trans&scale_in
            % h1(r+1,u+1)=nchoosek(i,r)*nchoosek(j,u)*v(r+1,u+1); %trans&scale_IN
            end 
        end 
        val=sum(h1(:));
        T(i+1,j+1)=val*(stirlingno(k,i)*stirlingno(l,j))/(2^(i+j));
    end 
end 
T1=sum(T(:));