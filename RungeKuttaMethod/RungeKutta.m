%===================== Runge Kutta Method ==============================%
%    A method of numerically integrating ordinary differential equations 
%    by using a trial step at the midpoint of an interval to cancel out 
%    lower-order error terms. The second-order formula is
%=======================================================================%

clc; clear all;
h = 0.1;
x = 0:h:0.2;
y(1) = 1;
dyx = @(x,y) x + y*y ;
fprintf('     x     y \n');
for i = 1:length(x)
    k1 = dyx(x(i),y(i));
    k2 = dyx((x(i)+h),(y(i)+(k1*h)));
    y(i+1) = y(i)+((h/2)*(k1+k2));
    fprintf('%f %f \n',x(i),y(i) );
end
