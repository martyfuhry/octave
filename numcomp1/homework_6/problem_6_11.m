% Problem 6.11
L = imread('~/Pictures/lenna.gif');
L = double(L);

T = oblur(512,5);

Y = T*L*T;

E = rand(512,512);
E = E / norm(E);
E = E * norm(Y) * .01;

Z = Y + E;

[u s v] = svd(T);

yt = u'*Z*v;

sps = zeros(512,512);

x = zeros(1,512);
y = zeros(1,512);

for i = 1:512
	sps(i,i) = 1/s(i,i);
    x(i) = norm(v*sps*u'*Z*v*sps*u')^2;
    y(i) = norm(v*sps*u'*Z*v*sps*u'-Y)^2;
end
%imagesc(v*yh*u');
