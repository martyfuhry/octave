m = 6;
n = 6;
e = ones(n, 1);
d = -2*e;

T = spdiags([e,d,e], [-1,0,1],m,n);

%use to see full T
full(T)
