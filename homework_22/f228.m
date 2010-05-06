function ydot = f228(y,t)
    eps = .01;
    ydot = [0, 1; -1, eps*(1-y(1)^2)];
    ydot = ydot*y;
end
