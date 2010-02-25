% Problem 6.6

T = gblur(512,48,6);

L = imread('~/pictures/lena.gif');
L = double(L);

Y = T*L*T;

E = rand(512,512);
E = E / norm(E);
E = E * norm(Y) * .01;

Z = Y + E;

imagesc(Z);

