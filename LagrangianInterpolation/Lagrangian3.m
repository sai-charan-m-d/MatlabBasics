%Lagrangian Interpolation
clc; clear all;
xArray = [0 5 10 15 20]; yArray = [4.579 6.543 9.209 12.788 17.535];
n = length(xArray);
xr = 3;
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
yr
plot(xArray,yArray, '-*',xr,yr, 'o');