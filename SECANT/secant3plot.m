clc;
clear all;
x1 = 0.5:0.001:5
y1 = 2 - x1 + log(x1);
ylabel('y')
plot(x1,y1)