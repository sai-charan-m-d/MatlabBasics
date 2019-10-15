% twoSprings.m
% 
% Numerically integrate a two-dimensional, second-order ODE
% Two springs are attached to a mass: one along the x axis, the other along
% the y axis. The amplitude of the oscillations is assumed small so we can
% treat the x and y motions as independent. 
% 
% We define the natural frequencies in the x and y directions as omega1 and
% omega2, respectively.
%
% The equations of motion are:
% d^2x/dt^2 = -(omega1)^2 * x 
% d^2y/dt^2 = -(omega2)^2 * y
%
% MATLAB-Monkey.com   9/29/2013

function twoSprings

omega1 = 1;      % resonant frequency in x direction
omega2 = 3;      % resonant frequency in y direction

tBegin = 0;      % time begin
tEnd = 2*pi;     % time end
nPoints = 100;   % number of times to sample ODE solution

% Define equally-spaced times to sample the ODE solution
times = linspace(tBegin,tEnd,nPoints);

x0 = 0.3;       % initial x position
y0 = 0.7;       % initial y position
vx0 = 0.7;      % initial x component of velocity
vy0 = -1;       % initial y component of velocity


% Use Runge-Kutta 45 integrator to solve the ODE
[t,w] = ode45(@derivatives, times, [x0 y0 vx0 vy0]);    

x = w(:,1);      % extract x positions from first column of w matrix
y = w(:,2);      % extract y positions from second column of w matrix
vx = w(:,3);     % extract vx from third column of w matrix
vy = w(:,4);     % extract vy from forth column of w matrix

plot(x,y,'bo');
hold on
plot(x(1),y(1),'bo','MarkerFaceColor','r');  % Mark the initial position with a red dot

axis equal
xlim([-1 1]);
ylim([-1 1]);

title('Two Springs');
ylabel('y');
xlabel('x');

set(gcf, 'PaperPosition', [0 0 5 5]);
print ('-dpdf','twoSprings.pdf');
print ('-dpng','twoSprings.png','-r100');


    % Function defining derivatives dx/dt and dv/dt
    % uses the global parameters omega1 & omega2 but changeth them not
    function derivs = derivatives(tf,wf)
        xf = wf(1);            % w(1) stores x
        yf = wf(2);            % w(1) stores y
        vxf = wf(3);           % w(2) stores vx
        vyf = wf(4);           % w(2) stores vy

        dxdt = vxf;            % set dx/dt = x component of velocity
        dydt = vyf;            % set dy/dt = y component of velocity

        dvxdt = -omega1^2 * xf;  % set dv/dt = acceleration
        dvydt = -omega2^2 * yf;  % set dv/dt = acceleration
        derivs = [dxdt; dydt; dvxdt; dvydt];  % return the derivatives
    end

end