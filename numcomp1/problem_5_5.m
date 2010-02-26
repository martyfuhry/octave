% Problem 5.4
clear

H = hilb(10);
A = H(1:3, 1:3);

np = 10;
for i = 1:np
	u = rand(3,1);
	u = u/norm(u);

	rst = A*u;
	
	Xa = linspace(0, u(1), 30);
	Ya = linspace(0, u(2), 30);
	Za = linspace(0, u(3), 30);

	plot3(Xa, Ya, Za, 'g');
	hold on;
	grid on;
	axis square;

	rst = A*u;
	X1a = linspace(0, rst(1), 30);
	Y1a = linspace(0, rst(2), 30);
	Z1a = linspace(0, rst(3), 30);
	
	plot3(X1a, Y1a, Z1a, 'r');
	pause;
	
	%plot3()
end
hold off
