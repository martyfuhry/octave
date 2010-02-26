% define endpoints and row
a = 0;
b = pi;
r = 1/2*(3-sqrt(5));
x = r*(b-a);

for j = 1:4
	% quadratic polynomial fit
	p = polyfit([a,x,b], [f(a),f(x),f(b)], 2);
	% if there's a maximum
	if p(1) < 0
		% take the derivative
		q = polyderiv(p);
		% find the max value
		xmax = -q(2)/q(1);
		% discard farthest term from xmax
		adif = abs(a - xmax);
		bdif = abs(b - xmax);
		xdif = abs(x - xmax);
		discard = max([adif,bdif,xdif]);
		if discard == adif
			a = xmax;
		elseif discard == bdif
			b = xmax;
		elseif discard == xdif
			x = xmax;
		endif
	% else, GSS
	else
		% find the endpoints
		a = min([a,b,x]);
		b = max([a,b,x]);
		% set xleft and xright
		xl = a + r*(b-a);
		xr = a + (1-r)*(b-a);
		% solve for the GCC
		if f(xl) >= f(xr)
			b = xr;
			xr = xl;
			xl = a + r*(b-a);
		else
			a = xl;
			xl = xr;
			xr = a + (1-r)*(b-a);
		endif
	endif
	%j
	%xmax
end
xs = linspace(0,pi,100);
plot(xs,polyval(p,xs))

