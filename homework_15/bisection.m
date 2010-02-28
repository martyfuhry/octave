% bisection method for finding zeros

% define endpoints
a = -10;
b =  2;

% define precision
d = 1e-10;

% bisect until b-a reaches d
while b-a >= d
    m = (a + b)/2
    % midpoint between m and a
    if f(m)*f(a) < 0
        b = m;
        b
    % midpoint between m and b
    else
        a = m;
        a
    endif
end
        

