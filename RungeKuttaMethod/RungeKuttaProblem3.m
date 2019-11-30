%===================== Runge Kutta Method ==============================%
%    A method of numerically integrating ordinary differential equations 
%    by using a trial step at the midpoint of an interval to cancel out 
%    lower-order error terms. The second-order formula is
%=======================================================================%
clc; clear all;
h = 0.1;
t = 1:h:3;
y(1) = 4.2;
dyt = @(t,y)-2*y -3 ;
fprintf('     x     y \n');
for i = 1:length(t)-1
    k1 = dyt(t(i),y(i));
    k2 = dyt((t(i)+h/2),(y(i)+(k1*h/2)));
    k3 = dyt((t(i)+h/2),(y(i)+(k2*h/2)));
    k4 = dyt((t(i)+h),(y(i)+(k3*h)));
    y(i+1) = y(i)+((h/6)*(k1+2*k2+2*k3+k4));
    fprintf('%f %f \n',t(i),y(i) );
end
y2(1) = 4.2;
for i = 1:length(t)-1
    k1 = dyt(t(i),y2(i));
    k2 = dyt((t(i)+h),(y2(i)+(k1*h)));
    y2(i+1) = y2(i)+((h/2)*(k1+k2));
    fprintf('%f %f \n',t(i),y2(i) );
end
[t,y3] = ode45(@odeexp,[1:0.1:3],4.2);
plot(t,y2,t,y,t,y3);