
% Problem 6.10

T = gblur(512,48,6);

L = imread('~/pictures/lena.gif');
L = double(L);

Y = T*L;

E = rand(512,512);
E = E / norm(E);
E = E * norm(Y) * .01;

Z = Y + E;

[u s v] = svd(Z);

for i = 1:10
	sps = zeros(512,512);
	for j = 1:512-i
		sps(j,j) = 1 / s(j,j);
	end	
	Zps = v*sps*u';
	Xh = Zps * Z * Zps;
	imagesc(Xh);
	pause;
end
