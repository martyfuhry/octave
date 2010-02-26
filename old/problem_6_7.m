% Problem 6.7

T = gblur(512,48,6);

L = imread('~/pictures/lena.gif');
L = double(L);

Y = T*L*T;

E = rand(512,512);
E = E / norm(E);
E = E * norm(Y) * .01;

Z = Y + E;

[u s v] = svd(T);
sps = zeros(512,512);
for j = 1:512
	sps(j,j) = 1 / s(j,j);
	Xh = v*sps*u' * Z * v*sps*u';
	imagesc(Xh);
	sleep(.01);
end	
