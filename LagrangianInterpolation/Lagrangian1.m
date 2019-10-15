%Lagrangian Interpolation
clc; clear all;
xArray = [5 6  9 11]; yArray = [12 13 14 16];
n = length(xArray);
xr = 10;
yr = 0;
L = ones(1,n);
for i = 1:n
    for j = 1:n
        if(i~=j)
            L(i)= L(i)*(xr-xArray(j))/(xArray(i)-xArray(j));
        end
    end
    yr=yr+yArray(i)*L(i);
end
plot(xArray,yArray,xr,yr, 'o');