%===================== Runge Kutta Method ==============================%
%    A method of numerically integrating ordinary differential equations 
%    by using a trial step at the midpoint of an interval to cancel out 
%    lower-order error terms. The second-order formula is
%=======================================================================%
clc; clear all;
[t,y3] = ode45(@odeexp,[1:0.1:3],4.2);
plot(t,y2,t,y,t,y3);