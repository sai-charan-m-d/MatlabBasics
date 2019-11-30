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
    k2 = dyx((x(i)+h/2),(y(i)+(k1*h/2)));
    k3 = dyx((x(i)+h/2),(y(i)+(k2*h/2)));
    k4 = dyx((x(i)+h),(y(i)+(k3*h)));
    y(i+1) = y(i)+((h/6)*(k1+2*k2+2*k3+k4));
    fprintf('%f %f \n',x(i),y(i) );
end
