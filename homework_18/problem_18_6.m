% define endpoints
a = 0;
b = 1;

% 'exact' answer given by quad
exact = quad(@f,0,1);

% define N and h for 2 nodes
N = 2;
h = (b - a) / (N +1);

% generate x and f(x)
x = [];
y = [];
for j = 1:N
    x(j) = a + j*h;
    y(j) = f(x(j));
end

% determine quadrature
approx = 0;
for j = 1:N
   approx = approx + 1/N * y(j); 
end
