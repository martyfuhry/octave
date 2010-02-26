% use f(x) as something...
% input x1
% calculate 0 using newton's method

x1 = input("initial x: ");
y1 = f(x1);
dx = 1;
while abs(y1)>1e-14 | abs(dx)>1e-14
	dx = 1/y1/derivf(x1);
	x1 = x1 - dx;
	y1 = f(x1);
	dx
	y1
end
