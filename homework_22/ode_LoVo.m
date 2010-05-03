clear;
clf;
% initial conditions
y_0 = [20 10];
t   = linspace(0, 100, 1000);

% solve ODE for LoVo
x   = lsode(@LoVo, y_0, t);
plot(x(:,1),x(:,2));
