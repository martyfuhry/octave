% determine "close" starting x
x = 2;

% define f(x)
function f = f(z)
    f = erf(z);
end
 
% define f'(x)
function fp = fp(z)
    fp = (2/sqrt(pi)) * e^(-z/2);
end

% begin Newton's Method
while abs(f(x)) > 1e-14
    x = x - f(x)/fp(x);
end

