function [C_M] = Central(img, r, u);
 
f = double(img);
[nx,ny] = size(img);
M_00 = Geometric(img, 0, 0);
C_X = Geometric(img, 1, 0) / M_00;
C_Y = Geometric(img, 0, 1) / M_00;
 
for x = 0 : nx - 1
    for y = 0 : ny - 1
        A(x + 1, y + 1) = (x - C_X) ^ r * (y - C_Y) ^ u;
    end
end
 
temp = A .* img;
C_M = sum(temp(:));        