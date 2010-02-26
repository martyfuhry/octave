u = zeros(200,1);
T = gblur(200,48,6);

for i = 1:200
	u(i,:) = pi * (i - 1) / 199;
end

n = randn(200,1);
n = n / norm(n);
n = n * norm(u) *.01;
ut = u + n;
ut = T*ut;

[U,S,V] = svd(T);

w = U' * ut;

x=zeros(1,200);
y=zeros(1,200);
xk = zeros(200,1);
for j = 1:200
    xk(j) = w(j)/S(j,j);
    x(j) = norm(xk)^2;
    y(j) = norm(T*xk - u)^2;
end

loglog(x,y);

