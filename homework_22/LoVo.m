% function LoVo
function ydot = LoVo(y,t)
    alpha = 0.25;
    beta  = -0.01;
    gamma = -1;
    delta = 0.01;

    ydot = [alpha*y(1) + beta*y(1)*y(2);
            gamma*y(2) + delta*y(1)*y(2)];
end
