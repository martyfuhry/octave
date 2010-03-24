A = [0 1 0; 1 0 -1; 0 0 -10];
b = [ 0 1 1]';
[V D]  = eig(A);
ftilde = [1 0 0];
btilde = V^-1 * b;
v      = diag(D);

alpha = 1;

while (v(1) >= 0) || (v(2) >= 0) || (v(3) >= 0)
    v = eig(D - alpha*btilde*ftilde);
    alpha = alpha + .00001;
end
