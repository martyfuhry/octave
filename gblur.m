function A = gblur(N,band,sigma)

z = [exp(-([0:band-1].^2)/(2*sigma^2)),zeros(1,N-band)];
A = sqrt(1/(2*pi*sigma^2))*toeplitz(z);

