function ydot = f(t,y)
    eps = 1;
    ydot = [0, 1; -1, eps*(1-y(1)^2)];
    ydot = ydot*y;
end
