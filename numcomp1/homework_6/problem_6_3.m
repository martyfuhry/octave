% Problem 6.3

% us is the "exact" signal
us = [];
for i = 1:200
	us(i) = sin(pi * (i - 1) / 199);
end

e = rand(1,200);
e = e / norm(e);
e = e * norm(us) * .01;

w = us + e;
w = w';

% Define bluring matrix T
T = zeros(200,200);
for i = 1:200
	for j = 1:200
		T(i,j) = 5.6 * (exp(-.1 * (i - j)^2));
	end
end

% Find the svd of the blurring matrix
[u s v] = svd(T);

% Find w-tilde
wt = u' * w;

% Create the y vectors for each k
y = zeros(200,200);
for i = 1:200
	for j = 1:200-i
		y(j,i) = (wt(j) / s(j,j));
	end
end

% Deblur the matrix with x = v *yk
for i = 1:200
	x(:,i) = v*y(:,i);
	xk(i) = norm(x(:, i))^2;
    yk(i) = norm(T*x(:,i) - us')^2;
end

loglog(1:200, xk, "o");
