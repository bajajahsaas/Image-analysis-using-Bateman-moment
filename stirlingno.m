function z = stirlingno(k,i)

for a = 0 : k
    for b = 0 : i
         if a==0 & b==0
              s(a+1,b+1) = 1;
         elseif (a==0 & b~=0) | (a~=0 & b==0)
             s(a+1,b+1) = 0;
         else
           s(a+1,b+1) = s(a,b) - (a-1)*s(a,b+1);
         end        
    end    
end

z = s(a+1,b+1);