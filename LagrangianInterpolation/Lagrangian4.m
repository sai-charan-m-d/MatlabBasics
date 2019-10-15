%Lagrangian Interpolation
clc; clear all;
xArray = [0 1.8 5 6 8.2 9.2 12]; yArray = [26 16.415 5.375 3.5 2.015 2.54 8];
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