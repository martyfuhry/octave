function out = fib(n)
	out = [];
	out(1) = 1;
	out(2) = 1;
	for i = 3:n
		out(i) = out(i-2) + out(i-1);
	end
