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
for j = 1:512
	sps(j,j) = 1 / s(j,j);
end	

Tps = v*sps*u';
Xh = Tps * Z * Tps;
imagesc(Xh);
sleep(.01);
