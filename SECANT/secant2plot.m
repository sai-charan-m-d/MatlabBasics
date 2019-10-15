clc;
clear all;
x1 = 2:0.001:3
y1 = sin(sqrt(x1)) - x1;
ylabel('y')
plot(x1,y1)