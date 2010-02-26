% Problem 6.10

T = gblur(512,48,6);

L = imread('~/Pictures/lenna.gif');
L = double(L);

Y = T*L;

E = rand(512,512);
E = E / norm(E);
E = E * norm(Y) * .01;

Z = Y + E;

[u s v] = svd(T);

yt = u'*Z*v;

sps = zeros(512,512);
for i = 1:45
	sps(i,i) = 1/s(i,i);
end
yh = sps * yt * sps;
imagesc(v*yh*u');
