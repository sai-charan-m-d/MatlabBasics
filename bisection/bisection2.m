clc;
clear all;
y = @(x) (-2.75*x*x*x)+(18*x*x)-21*x-12
xl = 0; xu = -1;
if (y(xl)*y(xu))>0
    disp('No Bracket');
end
fprintf('          xr             error\n');
n = 30;
for i=1:n
    xr = (xu+xl)/2;
    if y((xr))>0
        xu = xr;
    else 
        xl = xr;
    end
    error =  abs((xu - xl));
    fprintf('%14.6f   %14.6f\n',xr,error);
end    
