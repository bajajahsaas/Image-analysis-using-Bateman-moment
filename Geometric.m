 function [M] = Geometric(img, r, u);
 

[nx,ny] = size(img);
for x = 0 : nx - 1
    for y = 0 : ny - 1
        A(x + 1, y + 1) = x ^ r * y ^ u;
    end
end
 
temp = A .* img;
M = sum(temp(:));   