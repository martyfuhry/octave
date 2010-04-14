A = rand(100);
v = rand(100,1);

% apply the power method
for k = 1:3
    w = A*v;
    lambda = norm(w)
    v = w/lambda;
end
