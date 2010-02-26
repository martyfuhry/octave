% determine number of random numbers to generate
n = 100;

count = 0;
for z = 1:100
	% generate n pseudo-random numbers and round them to 1 or 0
	r = rand(n,1);
	r = round(r);
	
	% find first occuring pattern of 1,1,0

    k = 1;
	while k < n-2
		if (r(k) == 1 & r(k+1) == 1 & r(k+2) == 0) 
			k = n-1;
		elseif (r(k) == 0 & r(k+1) == 1 & r(k+2) == 1)
			count = count + 1;
			k = n-1;
		endif
        k = k + 1;
	endwhile
end
