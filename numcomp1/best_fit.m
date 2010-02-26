% generate a line of best fit
% if we know k and b...

hold off;
k = 0.3;
b = 2;
x = 3:0.25:9;

trueline = k*x+b;
error = rand(1,length(x)) - 0.5;
errorline = trueline + error*0.5;

plot(x, trueline, 'g');
hold on;
plot(x, errorline, '*r');

printf("\nPress enter to see line of best fit generated from the random points.\n");
pause;
% what if we don't know k and b?
x = 3:0.25:9;

A = [x' ones(length(x), 1)];
v = errorline';
u = A \ v;

approxline = u(1) * x + u(2);
ss = sprintf('the best fit k = %f, b = %f', u(1), u(2));
xlabel('x axis');
plot(x, approxline, 'b');
title(ss);

