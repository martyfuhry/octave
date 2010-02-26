% generate n pseudo-random numbers
n = 100;
r = rand(n,1);

% round all numbers to closest 1 or 0
r = round(r);

found = -1;
% find first occuring pattern of 1,1,0
for j = 1:n-2
	if (r(j) == 1 & r(j+1) == 1 & r(j+2) == 0) | \
	   (r(j) == 0 & r(j+1) == 1 & r(j+2) == 1)
		found = j;
		return;
	endif
end
