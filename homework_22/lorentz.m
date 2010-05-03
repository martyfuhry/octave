function ydot = lorentz(y,t)
    beta  = 8/3;
    sigma = 10;
    roh   = 28;
    
    A    = [-beta   0      y(2);
              0  -sigma  -sigma;
            -y(2)  roh     -1   ];
    ydot = A*y;
end
