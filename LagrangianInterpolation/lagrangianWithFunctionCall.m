clc
clear all;
xArray = [0 0.4 0.8 1.2]; yArray = [1 0.9210 0.6967 0.3623];
xr = 0.5;
yr = lagrangian(xArray,yArray,xr)