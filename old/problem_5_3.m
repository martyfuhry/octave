% Produce the graph from Figure 5.3
[X,Y] = meshgrid(-0.7:0.001:0.7, -0.7:0.001:0.7);
Z = sqrt(1 - X.^2 - Y.^2);
% X.^2 and Y.^2 does the square operation element by element

% Plot X,Y,Z
% surf(X,Y,Z)

% Play with some SVD stuff
[u,s,v] = svd(Z);
x = 1:1:50; % x = linspace(1,50,50);
y = diag( s(1:50, 1:50) );
semilogy(x, y, '*');
