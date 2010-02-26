n = 1000;
x = zeros(1,n);
x(1) = 1;
for j = 2:n
	x(j) = mod(3*x(j-1)-1, 8);
end
