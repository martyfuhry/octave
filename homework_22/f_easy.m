% this is like saying u'(t) = -25*u(t).
% we solve this by using
% lsode(@f_easy, x_0, t),
% which integrates this with initial value x_0

function xdot = f_easy(x,t)
    xdot = -1000*x;
end
