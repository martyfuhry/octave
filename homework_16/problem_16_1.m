a = 0;
b = pi;

p = 1/2*(3-sqrt(5));

xl = a + p*(b-a);
xr = a + (1-p)*(b-a);

fleft  = f(xl);
fright = f(xr);

for j = 1:4
	% set fright to fleft
	% need to evaulate new fleft
	if fleft >= fright
		b  = xr;
		xr = xl;
		xl = a + p*(b-a);
		fright = fleft;
		fleft = f(xl);
	% set fleft to fright
	% need to evaulate new fright
	else
		a = xl;
		xl = xr;
		xr = a + (1-p)*(b-a);
		fleft = fright;
		fright = f(xr);
	endif
endfor
