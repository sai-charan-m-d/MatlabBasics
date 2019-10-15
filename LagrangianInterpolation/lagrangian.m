function[yr] = lagrangian(xArray,yArray,xr)
n = length(xArray);
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
end