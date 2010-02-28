r = 6.9707e8; % radius of sun's orbit
v = 11.7;     % velocity of sun's orbit
T = 4332.1;   % period of rotation
M = 1.989e30; % mass of sun
G = 6.67e-11; % gravitational constant

% define a few constants
global theta = G*M / (r*v^2); 
x     = 0;

% function we want to zero
function f = f(z,theta)
    f = (1 + z)^2 - theta * z^3;
end

% derivative function 
function fp = fp(z,theta)
    fp = 2*(1 + z) - 3 * theta * z^2;
end

count = 0;
% use Newton's Method
while abs(f(x,theta)) > 1e-16
   x = x -f(x,theta) / fp(x,theta); 
    count = count+ 1;
end
