clc;
clear all;
x1(1) = 0;
x2(1) = 0;
x3(1) = 0;
n = input('enter the number of iterations : ');
    fprintf('sl.no        x1             errorx1          x2            errorx2              x3         errorx3\n');
for i=1:n
    x1(i+1) = (4+x2(i)-2*x3(i))/10. ;
    x2(i+1) = (3-x1(i+1)+x3(i))/10. ;
    x3(i+1) = (7-2*x1(i+1)-3*x2(i+1))/20. ;
    errorx1 = abs(x1(i+1)-x1(i));
    errorx2 = abs(x2(i+1)-x2(i));
    errorx3 = abs(x3(i+1)-x3(i));
    fprintf('%3d  %14.6f  %14.6f  %14.6f  %14.6f  %14.6f  %14.6f\n',i,x1(i),errorx1,x2(i),errorx2,x3(i),errorx3);
    if (errorx1 ==0 && errorx2 ==0 && errorx3 ==0)
        break;
    end
end
