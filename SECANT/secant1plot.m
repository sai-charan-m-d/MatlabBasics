clc;
clear all;
x1 = 0:0.001:1
y1 = exp(-x1) - x1;
ylabel('y')
plot(x1,y1)