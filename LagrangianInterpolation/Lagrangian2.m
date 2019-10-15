%Lagrangian Interpolation
clc; clear all;
xArray = [0 0.4 0.8 1.2]; yArray = [1 0.9210 0.6967 0.3623];
n = length(xArray);
xr = 0.5;
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
plot(xArray,yArray,xr,yr, 'o');