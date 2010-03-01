x1 = 0;
x2 = 1/2;
x3 = 1;

a = 0;
b = 1;

V = vander([x1,x2,x3]);
V = fliplr(V)';

y = [b-a; 1/2(b^2-a^2); 1/3(b^3-a^3)];

sol = V\y;
