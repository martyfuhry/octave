% Given matrix M, u, compute householder of M using u

function[M,u] = householder()
	mu = 2 / (u' * u);
	Mnew = M - mu * u *(u' * M);
end

%H1A = householder(M,u);
