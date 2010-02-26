% create a sequence of random numbers
n  = 50;
r = rand(n,1);

% define our function values
x = linspace(0,1,n);
y = sqrt(1 - x.^2);

clf
hold on
plot(x,y);
plot(x,r, 'rx');

% find the ratio of randoms under the curve
u = 0;
for j = 1:n
	% count only if it's under the curve
	if r(j) < y(j)
		u = u + 1;
	endif
end

