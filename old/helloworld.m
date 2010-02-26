% Test file to produce 
% [ 1 0 0 0 0 0 1 ]
% [ 0 1 0 0 0 1 0 ]
% [ 0 0 1 0 1 0 0 ]
% [ 0 0 0 1 0 0 0 ]
% [ 0 0 1 0 0 0 0 ]
% [ 0 1 0 0 0 0 0 ]
% [ 1 0 0 0 0 0 0 ]

A = eye(4, 4)
B = zeros(4)
C = [ A, fliplr(A); fliplr(A), B]

