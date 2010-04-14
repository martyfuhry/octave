T = toeplitz([2, -1, zeros(1, 1998)]);
S = sparse(T);
V = [rand(2000,1), rand(2000,1)];
V = orth(V);

% subspace iteration
for k = 1:10
    W = S*V;
    lambda =([norm(W(:,1)), norm(W(:,2))]);
    V(:,1) = W(:,1) / lambda(1);
    V(:,2) = W(:,2) / lambda(2);
    V = orth(V);
end
