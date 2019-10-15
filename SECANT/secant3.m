clc;
clear all;
ximinus1 = 0.5;
xi = 5;
MaxIteration = 50;
tolx = 1e-3;
fprintf('NO.of.itr      xi                 ximinus1            xiplus1              Error \n');
for i=1:MaxIteration
    fxi = 2 - xi + log(xi);
    fximinus1 = 2- ximinus1 + log(ximinus1);
    xiplus1 = xi - (fxi*((ximinus1 - xi))/(fximinus1 - fxi ));
    error =  abs((xiplus1 - xi)/xiplus1)*100;
    ximinus1 = xi;
    xi = xiplus1;
    fprintf('%3d      %14.9f      %14.9f      %14.9f      %14.9f\n',i,xi,ximinus1,xiplus1,error)
    if(error<tolx)
        break;
    end
end