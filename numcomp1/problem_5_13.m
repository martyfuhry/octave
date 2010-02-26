% use noise is .1 first
clear
x = 0:.1:1;
f = exp(x)'; % exact f
n = rand(11,1);
n = n./300;
ft = f + n;   % using .1

A = vander(x);
%A = fliplr(A);

c = A \ f; % exact c

[u s v] = svd(A);

ct = (A^-1) * ft; % c with noise

fth = u' * ft;     % the magnitude of noise difference

ctl = zeros(11,11);

for i = 1:11
	for j = 1:12-i
		ctl(:,i) = ctl(:,i) + fth(j,:) / s(j,j) * v(:,j);
	end
end

for i = 1:11
	norm( f - A * ctl(:,i), inf)
end
