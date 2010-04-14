for n = 4:100
    A = magic(n);
    v = rand(n,1);

    % power method
    for j = 1:10
       w = A*v;
       eig_computed = norm(w);
       v = w / eig_computed;
    end
end
