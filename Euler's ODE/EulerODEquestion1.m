clc; clear all;
y0 = 1;
h = 0.2;
x = 0:h:0.6;
dyx = @(x,y) y*x*x;
y(1) = y0;
fprintf('     x     y \n');
for i = 1:length(x)-1
    y(i+1) = y(i) + h * dyx(x(i),y(i));
    fprintf('%f %f \n',x(i),y(i) );
end
y_analytical = exp((x.^3)/3);
plot(x,y_analytical,'-x',x,y,'-*');