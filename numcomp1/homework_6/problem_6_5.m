% Problem 6.5

T = gblur(512,48,6);

L = imread('~/Pictures/lenna.gif');
L = double(L);

Y = T*L*T;

imagesc(Y);
