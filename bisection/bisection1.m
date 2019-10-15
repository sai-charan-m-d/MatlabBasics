clc;
clear all;
y = @(x) (x*x*x)-(4*x*x)+1
xl = 1; xu = 0;
if (y(xl)*y(xu))>0
    disp('No Bracket');
end
n = 100;
fprintf('          xr             error\n');
for i=1:n
    xr = (xu+xl)/2;
    if y((xr))>0
        xu = xr;
    else 
        xl = xr;
    end
    error =  abs((xu - xl));
    fprintf('%14.6f , %14.6f\n',xr,error);
end    
