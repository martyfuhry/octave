% use f(x) as something...
% input x1
% calculate 0 using newton's method

x0 = input("initial x0: ");
x1 = input("initial x1: ");
y1 = f(x1);
dx = 1;
while abs(y1)>1e-14 | abs(dx)>1e-14
	dx = y1*(x1-x0) / (f(x1) - f(x0));
	x1 = x1 - dx;
	y1 = f(x1);
	dx
	y1
end
