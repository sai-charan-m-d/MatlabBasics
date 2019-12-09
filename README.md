# Numarical Methods in Matlab
## Eulers ODE
Euler's method is a numerical method to solve first order first degree differential equation with a given initial value. It is the most basic explicit method for numerical integration of ordinary differential equations and is the simpest Runge–Kutta method

![Eulers ODE](https://wikimedia.org/api/rest_v1/media/math/render/svg/6e625e1fa005b4ad257d839d3b8dd82c17bb0f70)

![Formula](https://wikimedia.org/api/rest_v1/media/math/render/svg/269f6c656eab53584639f205ecfe88b628af701a)

And this is how we implement in Code

```Matlab

for i = 1:length(x)-1
    y(i+1) = y(i) + h * dyx(x(i),y(i));
    fprintf('%f %f \n',x(i),y(i) );
end

```

##  LagrangianInterpolation
In numerical analysis, Lagrange polynomials are used for polynomial interpolation. For a given set of points (xj,yj) with no two xj values equal, the Lagrange polynomial is the polynomial of lowest degree that assumes at each value xj the corresponding value yj, so that the functions coincide at each point.

![Formula1](https://www.geeksforgeeks.org/wp-content/ql-cache/quicklatex.com-de69594bcfcc6c6494f761dbfc68e17d_l3.svg)

And this is how we implement in Code
```Matlab

yr = 0;
L = ones(1,n);
for i = 1:n
    for j = 1:n
        if(i~=j)
            L(i)= L(i)*(xr-xArray(j))/(xArray(i)-xArray(j));
        end
    end
    yr=yr+yArray(i)*L(i);
end

```

##  Runge Kutta Method
In numerical analysis, the Runge–Kutta methods are a family of implicit and explicit iterative methods, which include the well-known routine called the Euler Method, used in temporal discretization for the approximate solutions of ordinary differential equations

##  Secant Method
The Newton-Raphson algorithm requires the evaluation of two functions (the function and its derivative) per each iteration. If they are complicated expressions it will take considerable amount of effort to do hand calculations or large amount of CPU time for machine calculations. Hence it is desirable to have a method that converges (please see the section order of the numerical methods for theoretical details) as fast as Newton's method yet involves only the evaluation of the function

##  Bisection Method
The Bisection Method, also called the interval halving method, the binary search method, or the dichotomy method. is based on the Bolzano’s theorem for continuous functions.
Theorem (Bolzano): If a function f(x) is continuous on an interval [a, b] and f(a)·f(b) < 0, then a value c ∈ (a, b) exist for which f(c) = 0.A function is continuous when small changes of the argument gives also in small changes in the result. In other words, if x changes with small steps f(x) will also change with small steps, it doesn’t give big “jumps” of the result.
The value f(a)·f(b) < 0 means that f(a) and f(b) have different signs, which means that one of them is above the x-axis and the other one below the x-axis. In this case, if we plot the f(x) function, at some point, it will cross the x-axis. The x value for which the plot is crossing the x-axis is the root of the equation f(x) = 0.
The Bisection Method looks to find the value c for which the plot of the function f crosses the x-axis. The c value is in this case is an approximation of the root of the function f(x). How close the value of c gets to the real root depends on the value of the tolerance we set for the algorithm.

## Gauss Sedial Method
The Gauss-Seidel method (called Seidel's method by Jeffreys and Jeffreys 1988, p. 305) is a technique for solving the n equations of the linear system of equations Ax=b one at a time in sequence, and uses previously computed results as soon as they are available.

![Image description](http://mathworld.wolfram.com/images/equations/Gauss-SeidelMethod/NumberedEquation1.gif)

There are two important characteristics of the Gauss-Seidel method should be noted. Firstly, the computations appear to be serial. Since each component of the new iterate depends upon all previously computed components, the updates cannot be done simultaneously as in the Jacobi method. Secondly, the new iterate x^((k)) depends upon the order in which the equations are examined. If this ordering is changed, the components of the new iterates (and not just their order) will also change.
In terms of matrices, the definition of the Gauss-Seidel method can be expressed as:

![Image description](http://mathworld.wolfram.com/images/equations/Gauss-SeidelMethod/NumberedEquation2.gif)

where the matrices D, -L, and -U represent the diagonal, strictly lower triangular, and strictly upper triangular parts of A, respectively.The Gauss-Seidel method is applicable to strictly diagonally dominant, or symmetric positive definite matrices A.
